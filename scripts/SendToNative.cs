using System;
using System.IO;
using System.Text;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using System.Windows.Forms;

// Synchronously build the original Windows Send To menu and invoke only the chosen target.
public static class SendToNative {
 [DllImport("kernel32.dll")] static extern IntPtr GetCurrentProcess();
 [DllImport("kernel32.dll")] static extern bool TerminateProcess(IntPtr process,uint code);
 [ComImport,Guid("000214e6-0000-0000-c000-000000000046"),InterfaceType(ComInterfaceType.InterfaceIsIUnknown)] interface IShellFolder {
  void ParseDisplayName();void EnumObjects();void BindToObject();void BindToStorage();void CompareIDs();void CreateViewObject();void GetAttributesOf();
  void GetUIObjectOf(IntPtr hwnd,uint count,[MarshalAs(UnmanagedType.LPArray,SizeParamIndex=1)] IntPtr[] children,ref Guid iid,IntPtr reserved,[MarshalAs(UnmanagedType.IUnknown)] out object obj);
 }
 [ComImport,Guid("000214e4-0000-0000-c000-000000000046"),InterfaceType(ComInterfaceType.InterfaceIsIUnknown)] interface IContextMenu {
  [PreserveSig] int QueryContextMenu(IntPtr menu,uint index,uint first,uint last,uint flags);
  [PreserveSig] int InvokeCommand(ref InvokeInfo info);
  [PreserveSig] int GetCommandString(UIntPtr id,uint flags,IntPtr reserved,IntPtr name,uint max);
 }
 [ComImport,Guid("000214f4-0000-0000-c000-000000000046"),InterfaceType(ComInterfaceType.InterfaceIsIUnknown)] interface IContextMenu2 {
  [PreserveSig] int QueryContextMenu(IntPtr menu,uint index,uint first,uint last,uint flags);
  [PreserveSig] int InvokeCommand(IntPtr info);
  [PreserveSig] int GetCommandString(UIntPtr id,uint flags,IntPtr reserved,IntPtr name,uint max);
  [PreserveSig] int HandleMenuMsg(uint msg,IntPtr w,IntPtr l);
 }
 [StructLayout(LayoutKind.Sequential)] struct InvokeInfo {
  public uint size,mask;public IntPtr hwnd,verb,parameters,directory;public int show;public uint hotkey;public IntPtr icon;
 }
 [DllImport("shell32.dll",CharSet=CharSet.Unicode,PreserveSig=false)] static extern void SHParseDisplayName(string name,IntPtr bc,out IntPtr pidl,uint mask,out uint attributes);
 [DllImport("shell32.dll",PreserveSig=false)] static extern void SHBindToParent(IntPtr pidl,ref Guid iid,out IShellFolder parent,out IntPtr child);
 [DllImport("user32.dll")] static extern IntPtr CreatePopupMenu();
 [DllImport("user32.dll")] static extern bool DestroyMenu(IntPtr menu);
 [DllImport("user32.dll")] static extern int GetMenuItemCount(IntPtr menu);
 [DllImport("user32.dll")] static extern IntPtr GetSubMenu(IntPtr menu,int pos);
 [DllImport("user32.dll")] static extern uint GetMenuItemID(IntPtr menu,int pos);
 [DllImport("user32.dll",CharSet=CharSet.Unicode)] static extern int GetMenuString(IntPtr menu,uint item,StringBuilder text,int max,uint flags);
 static string Name(IntPtr menu,int i){var b=new StringBuilder(1024);GetMenuString(menu,(uint)i,b,1024,0x400);return b.ToString().Replace("&","").Trim();}
 static void Check(int hr){Marshal.ThrowExceptionForHR(hr);}
 [STAThread] public static int Main(string[] args) {
  bool list=args.Length>0 && args[0]=="--list";
  try {
   if(args.Length<3 || (args[0]!="--target" && !list))throw new ArgumentException("Usage: --target name file... OR --list output-file file...");
   string destination=args[1],parent=null;var pidls=new List<IntPtr>();var children=new List<IntPtr>();
   IShellFolder folder=null;object handler=null;IntPtr menu=IntPtr.Zero;
   try {
    Guid fi=new Guid("000214e6-0000-0000-c000-000000000046"),ci=new Guid("000214e4-0000-0000-c000-000000000046");
    for(int i=2;i<args.Length;i++) {
     string path=Path.GetFullPath(args[i]),dir=Path.GetDirectoryName(path.TrimEnd('\\'));
     if(!File.Exists(path)&&!Directory.Exists(path))throw new FileNotFoundException(path);
     if(parent!=null&&!String.Equals(parent,dir,StringComparison.OrdinalIgnoreCase))throw new ArgumentException("Please select items in the same folder.");
     parent=dir;IntPtr pidl,child;uint attributes;SHParseDisplayName(path,IntPtr.Zero,out pidl,0,out attributes);pidls.Add(pidl);
     IShellFolder current;SHBindToParent(pidl,ref fi,out current,out child);children.Add(child);
     if(folder==null)folder=current;else Marshal.ReleaseComObject(current);
    }
    folder.GetUIObjectOf(IntPtr.Zero,(uint)children.Count,children.ToArray(),ref ci,IntPtr.Zero,out handler);
    menu=CreatePopupMenu();var cm=(IContextMenu)handler;Check(cm.QueryContextMenu(menu,0,1,32767,0x1000));
    IntPtr send=IntPtr.Zero;
    for(int i=0;i<GetMenuItemCount(menu);i++) {
     string title=Name(menu,i);if(!String.Equals(title,"Send to",StringComparison.OrdinalIgnoreCase)&&title!="发送到")continue;
     send=GetSubMenu(menu,i);if(send!=IntPtr.Zero)Check(((IContextMenu2)handler).HandleMenuMsg(0x117,send,new IntPtr(i)));break;
    }
    if(send==IntPtr.Zero)throw new InvalidOperationException("Windows did not provide a Send To menu for this selection.");
    var names=new List<string>();uint command=0;
    for(int i=0;i<GetMenuItemCount(send);i++){string title=Name(send,i);if(title.Length==0)continue;names.Add(title);if(String.Equals(title,destination,StringComparison.OrdinalIgnoreCase))command=GetMenuItemID(send,i);}
    if(list){File.WriteAllLines(destination,names,Encoding.UTF8);TerminateProcess(GetCurrentProcess(),0);return 0;}
    if(command==0||command==UInt32.MaxValue)throw new InvalidOperationException("Send To target unavailable: "+destination);
    var invoke=new InvokeInfo();invoke.size=(uint)Marshal.SizeOf(typeof(InvokeInfo));invoke.mask=0x100;invoke.verb=new IntPtr(command-1);invoke.show=1;
    Check(cm.InvokeCommand(ref invoke));
    // Let native asynchronous handlers finish starting before releasing the selection.
    var until=DateTime.UtcNow.AddSeconds(2);while(DateTime.UtcNow<until){Application.DoEvents();System.Threading.Thread.Sleep(20);}
    // Some third-party shell extensions block COM teardown for folder selections.
    // This short-lived helper owns no further work; OS process teardown releases them.
    TerminateProcess(GetCurrentProcess(),0);return 0;
   } finally {
    if(menu!=IntPtr.Zero)DestroyMenu(menu);if(handler!=null)Marshal.ReleaseComObject(handler);if(folder!=null)Marshal.ReleaseComObject(folder);
    foreach(IntPtr pidl in pidls)Marshal.FreeCoTaskMem(pidl);
   }
  } catch(Exception e) {
   if(list)File.WriteAllText(args[1],"ERROR: "+e,Encoding.UTF8);
   else MessageBox.Show(e.Message,"Send To",MessageBoxButtons.OK,MessageBoxIcon.Error);
   return 1;
  }
 }
}
