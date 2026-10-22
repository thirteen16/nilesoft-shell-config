# 当前右键菜单选项

本表记录当前配置的菜单项目和顺序；IDE 统一为“Open with ××”。修改本表不会自动修改配置，实际规则在 imports/table-order.nss 与 imports/all-files.nss。
补充规则：有 Open with 的场景补齐 Open，并将 Open 紧邻放在上方；两项都有图标。文件菜单使用统一的系统默认关联 Open，未列出的文件类型也适用。未列出扩展名现在由 imports/all-files.nss 接管，使用分类菜单或通用菜单。
这是配置目标清单；系统或扩展没有提供的命令不会凭空产生。已实测 15 类文件／文件夹／多选菜单，桌面发送入口位置正确，并已验证快捷方式创建。
下列原有 34 类场景保持原配置；新增规则覆盖其余所有普通文件（含未知扩展名和无扩展名），不再保留未经筛选的系统原菜单。Bandizip 普通及树形压缩预览已关闭，迁移方法见重装恢复说明。

## 01. 单个 TXT

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 6 | Open with | — | Windows／关联应用；选择打开此文件的应用 |
| 7 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 8 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 9 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 10 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 11 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 12 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 13 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 14 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 15 | Open Command Prompt here | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 16 | Open CMD here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 17 | Open PowerShell here | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 18 | Open PowerShell here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 19 | Open Git Bash here | 下方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 20 | Open with Notepad | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 21 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 22 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 23 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 24 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 02. 单个文件夹

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | Windows／关联应用；按系统默认关联打开 |
| 6 | Open in new tab | — | Windows／关联应用；在新标签页浏览 |
| 7 | Open in new window | — | Windows／关联应用；在新窗口浏览 |
| 8 | Pin to Quick access | — | Windows／关联应用；固定到快速访问 |
| 9 | Pin to Start | — | Windows／关联应用；固定到开始菜单 |
| 10 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 11 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 12 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 13 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 14 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 15 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 16 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 17 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 18 | Open Command Prompt here | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 19 | Open CMD here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 20 | Open PowerShell here | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 21 | Open PowerShell here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 22 | Open Git Bash here | 下方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 23 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 24 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 25 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 26 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 03. sample.md

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 6 | Open with | — | Windows／关联应用；选择打开此文件的应用 |
| 7 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 8 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 9 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 10 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 11 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 12 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 13 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 14 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 15 | Open Command Prompt here | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 16 | Open CMD here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 17 | Open PowerShell here | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 18 | Open PowerShell here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 19 | Open Git Bash here | 下方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 20 | Open with Notepad | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 21 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 22 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 23 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 24 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 04. sample.ahk

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 6 | Open with | — | Windows／关联应用；选择打开此文件的应用 |
| 7 | Run as administrator | — | Windows／关联应用；以管理员权限运行，可能触发 UAC |
| 8 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 9 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 10 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 11 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 12 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 13 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 14 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 15 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 16 | Open Command Prompt here | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 17 | Open CMD here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 18 | Open PowerShell here | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 19 | Open PowerShell here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 20 | Open Git Bash here | 下方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 21 | Open with Notepad | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 22 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 23 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 24 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 25 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 05. sample.ps1

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 6 | Open with | — | Windows／关联应用；选择打开此文件的应用 |
| 7 | Run with PowerShell | — | Windows／关联应用；运行选中的 PowerShell 脚本 |
| 8 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 9 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 10 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 11 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 12 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 13 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 14 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 15 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 16 | Open Command Prompt here | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 17 | Open CMD here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 18 | Open PowerShell here | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 19 | Open PowerShell here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 20 | Open Git Bash here | 下方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 21 | Open with Notepad | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 22 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 23 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 24 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 25 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 06. sample.bat

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 6 | Run as administrator | — | Windows／关联应用；以管理员权限运行，可能触发 UAC |
| 7 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 8 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 9 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 10 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 11 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 12 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 13 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 14 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 15 | Open Command Prompt here | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 16 | Open CMD here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 17 | Open PowerShell here | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 18 | Open PowerShell here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 19 | Open Git Bash here | 下方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 20 | Open with Notepad | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 21 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 22 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 23 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 24 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 07. sample.py

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 6 | Open with | — | Windows／关联应用；选择打开此文件的应用 |
| 7 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 8 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 9 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 10 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 11 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 12 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 13 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 14 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 15 | Open Command Prompt here | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 16 | Open CMD here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 17 | Open PowerShell here | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 18 | Open PowerShell here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 19 | Open Git Bash here | 下方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 20 | Open with Notepad | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 21 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 22 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 23 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 24 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 08. sample.png

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 6 | Open with | — | Windows／关联应用；选择打开此文件的应用 |
| 7 | Set as desktop background | — | Windows／关联应用；设为桌面背景 |
| 8 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 9 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 10 | Edit with Photos | — | Windows／关联应用；用照片应用编辑图片 |
| 11 | Pin with PixPin | — | PixPin；将图片作为贴图显示 |
| 12 | Resize pictures | — | PowerToys；调整图片尺寸 |
| 13 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 14 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 15 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 16 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 17 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 18 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 19 | Open Command Prompt here | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 20 | Open CMD here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 21 | Open PowerShell here | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 22 | Open PowerShell here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 23 | Open Git Bash here | 下方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 24 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 25 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 26 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 27 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

待确认（配置保留匹配规则，系统或软件不一定提供）：Pin with PixPin。

## 09. sample.zip

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Paste | — | Windows／关联应用；粘贴剪贴板中的对象 |
| 4 | Rename | — | Windows／关联应用；重命名 |
| 5 | Delete | — | Windows／关联应用；删除选中对象 |
| 6 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 7 | Open with | — | Windows／关联应用；选择打开此文件的应用 |
| 8 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 9 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 10 | Extract to named folder | — | Bandizip；压缩／解压 |
| 11 | Extract here | — | Bandizip；压缩／解压 |
| 12 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 13 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 14 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 15 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 16 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 17 | Open Command Prompt here | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 18 | Open CMD here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 19 | Open PowerShell here | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 20 | Open PowerShell here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 21 | Open Git Bash here | 下方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 22 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 23 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 24 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 25 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 10. sample.exe

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 6 | Run as administrator | — | Windows／关联应用；以管理员权限运行，可能触发 UAC |
| 7 | Pin to Start | — | Windows／关联应用；固定到开始菜单 |
| 8 | Pin to taskbar | — | Windows／关联应用；固定到任务栏 |
| 9 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 10 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 11 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 12 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 13 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 14 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 15 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 16 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 17 | Open Command Prompt here | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 18 | Open CMD here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 19 | Open PowerShell here | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 20 | Open PowerShell here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 21 | Open Git Bash here | 下方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 22 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 23 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 24 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 25 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 11. sample.lnk

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 6 | Open with | — | Windows／关联应用；选择打开此文件的应用 |
| 7 | Open file location | — | Windows／关联应用；定位快捷方式目标或文件所在位置 |
| 8 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 9 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 10 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 11 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 12 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 13 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 14 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 15 | Open Command Prompt here | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 16 | Open CMD here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 17 | Open PowerShell here | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 18 | Open PowerShell here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 19 | Open Git Bash here | 下方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 20 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 21 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 22 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 23 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 12. 多选同类型文件

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 6 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 7 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 8 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 9 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 10 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 11 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 12 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 13 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 14 | Open Command Prompt here | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 15 | Open CMD here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 16 | Open PowerShell here | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 17 | Open PowerShell here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 18 | Open Git Bash here | 下方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 19 | Open with Notepad | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 20 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 21 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 22 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 23 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 13. 多选不同类型文件

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 6 | Pin with PixPin | — | PixPin；将图片作为贴图显示 |
| 7 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 8 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 9 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 10 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 11 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 12 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 13 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 14 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 15 | Open Command Prompt here | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 16 | Open CMD here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 17 | Open PowerShell here | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 18 | Open PowerShell here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 19 | Open Git Bash here | 下方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 20 | Open with Notepad | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 21 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 22 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 23 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 24 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

待确认（配置保留匹配规则，系统或软件不一定提供）：Pin with PixPin。

## 14. 多选文件夹

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | Windows／关联应用；按系统默认关联打开 |
| 6 | Open in new window | — | Windows／关联应用；在新窗口浏览 |
| 7 | Pin to Quick access | — | Windows／关联应用；固定到快速访问 |
| 8 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 9 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 10 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 11 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 12 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 13 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 14 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 15 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 16 | Open Command Prompt here | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 17 | Open CMD here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 18 | Open PowerShell here | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 19 | Open PowerShell here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 20 | Open Git Bash here | 下方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 21 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 22 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 23 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 24 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 15. 混合多选

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 6 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 7 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 8 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 9 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 10 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 11 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 12 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 13 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 14 | Open Command Prompt here | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 15 | Open CMD here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 16 | Open PowerShell here | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 17 | Open PowerShell here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 18 | Open Git Bash here | 下方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 19 | Open with Notepad | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 20 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 21 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 22 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 23 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 16. sample.docx

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 6 | Open with | — | Windows／关联应用；选择打开此文件的应用 |
| 7 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 8 | New | — | Windows／关联应用；新建对象或文档 |
| 9 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 10 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 11 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 12 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 13 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 14 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 15 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 16 | Open with Notepad | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 17 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 18 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 19 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 20 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 17. sample.xlsx

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 6 | Open with | — | Windows／关联应用；选择打开此文件的应用 |
| 7 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 8 | New | — | Windows／关联应用；新建对象或文档 |
| 9 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 10 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 11 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 12 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 13 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 14 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 15 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 16 | Open with Notepad | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 17 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 18 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 19 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 20 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 18. sample.pptx

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 6 | Open with | — | Windows／关联应用；选择打开此文件的应用 |
| 7 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 8 | New | — | Windows／关联应用；新建对象或文档 |
| 9 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 10 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 11 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 12 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 13 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 14 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 15 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 16 | Open with Notepad | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 17 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 18 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 19 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 20 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 19. sample.wav

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 6 | Open with | — | Windows／关联应用；选择打开此文件的应用 |
| 7 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 8 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 9 | Play with PotPlayer | — | PotPlayer；播放音频／添加到播放列表 |
| 10 | Add to PotPlayer playlist | — | PotPlayer；播放音频／添加到播放列表 |
| 11 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 12 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 13 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 14 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 15 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 16 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 17 | Open with Notepad | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 18 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 19 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 20 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 21 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 20. sample.ttf

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 6 | Open with | — | Windows／关联应用；选择打开此文件的应用 |
| 7 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 8 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 9 | Preview | — | Windows／关联应用；预览字体 |
| 10 | Install | — | Windows／关联应用；安装字体 |
| 11 | Install for all users | — | Windows／关联应用；为所有用户安装字体 |
| 12 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 13 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 14 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 15 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 16 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 17 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 18 | Open with Notepad | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 19 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 20 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 21 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 22 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 21. sample.cmd

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 6 | Open with | — | Windows／关联应用；选择打开此文件的应用 |
| 7 | Run as administrator | — | Windows／关联应用；以管理员权限运行，可能触发 UAC |
| 8 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 9 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 10 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 11 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 12 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 13 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 14 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 15 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 16 | Open with Notepad | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 17 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 18 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 19 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 20 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

待确认（配置保留匹配规则，系统或软件不一定提供）：Open with。

## 22. sample.reg

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 6 | Open with | — | Windows／关联应用；选择打开此文件的应用 |
| 7 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 8 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 9 | Merge | — | Windows／关联应用；将注册表文件内容导入注册表 |
| 10 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 11 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 12 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 13 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 14 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 15 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 16 | Open with Notepad | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 17 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 18 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 19 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 20 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 23. sample.csv

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 6 | Open with | — | Windows／关联应用；选择打开此文件的应用 |
| 7 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 8 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 9 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 10 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 11 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 12 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 13 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 14 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 15 | Open with Notepad | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 16 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 17 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 18 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 19 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 24. sample.json

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 6 | Open with | — | Windows／关联应用；选择打开此文件的应用 |
| 7 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 8 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 9 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 10 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 11 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 12 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 13 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 14 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 15 | Open with Notepad | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 16 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 17 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 18 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 19 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 25. sample.xml

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 6 | Open with | — | Windows／关联应用；选择打开此文件的应用 |
| 7 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 8 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 9 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 10 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 11 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 12 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 13 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 14 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 15 | Open with Notepad | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 16 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 17 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 18 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 19 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 26. sample.sln

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 6 | Open with | — | Windows／关联应用；选择打开此文件的应用 |
| 7 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 8 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 9 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 10 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 11 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 12 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 13 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 14 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 15 | Open with Notepad | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 16 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 17 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 18 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 19 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 27. 文件夹内部空白处

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | View | — | Windows／关联应用；改变显示方式 |
| 2 | Sort by | — | Windows／关联应用；设置排序规则 |
| 3 | Group by | — | Windows／关联应用；设置分组规则 |
| 4 | New | — | Windows／关联应用；新建对象或文档 |
| 5 | Refresh | — | Windows／关联应用；刷新当前视图 |
| 6 | Paste | — | Windows／关联应用；粘贴剪贴板中的对象 |
| 7 | Rename | — | Windows／关联应用；重命名 |
| 8 | Undo | — | Windows／关联应用；撤销最近的文件操作 |
| 9 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 10 | Open Command Prompt here | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 11 | Open CMD here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 12 | Open PowerShell here | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 13 | Open PowerShell here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 14 | Open Git Bash here | 下方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 15 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 16 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 17 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 18 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

待确认（配置保留匹配规则，系统或软件不一定提供）：View、Group by、Rename、Undo。

## 28. 磁盘 C:\

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Copy | — | Windows／关联应用；复制选中对象 |
| 2 | Rename | — | Windows／关联应用；重命名 |
| 3 | Open | — | Windows／关联应用；按系统默认关联打开 |
| 4 | Open in new tab | — | Windows／关联应用；在新标签页浏览 |
| 5 | Open in new window | — | Windows／关联应用；在新窗口浏览 |
| 6 | Format... | — | Windows／关联应用；格式化所选磁盘 |
| 7 | Manage BitLocker | — | Windows／关联应用；管理磁盘加密 |
| 8 | Pin to Quick access | — | Windows／关联应用；固定到快速访问 |
| 9 | Pin to Start | — | Windows／关联应用；固定到开始菜单 |
| 10 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 11 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 12 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 13 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 14 | Open Command Prompt here | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 15 | Open CMD here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 16 | Open PowerShell here | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 17 | Open PowerShell here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 18 | Open Git Bash here | 下方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 19 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 20 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 21 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 22 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 29. 磁盘 D:\

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Copy | — | Windows／关联应用；复制选中对象 |
| 2 | Rename | — | Windows／关联应用；重命名 |
| 3 | Open | — | Windows／关联应用；按系统默认关联打开 |
| 4 | Open in new tab | — | Windows／关联应用；在新标签页浏览 |
| 5 | Open in new window | — | Windows／关联应用；在新窗口浏览 |
| 6 | Format... | — | Windows／关联应用；格式化所选磁盘 |
| 7 | Manage BitLocker | — | Windows／关联应用；管理磁盘加密 |
| 8 | Pin to Quick access | — | Windows／关联应用；固定到快速访问 |
| 9 | Pin to Start | — | Windows／关联应用；固定到开始菜单 |
| 10 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 11 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 12 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 13 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 14 | Open Command Prompt here | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 15 | Open CMD here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 16 | Open PowerShell here | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 17 | Open PowerShell here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 18 | Open Git Bash here | 下方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 19 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 20 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 21 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 22 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 30. 回收站图标（桌面命名空间）

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Rename | — | Windows／关联应用；重命名 |
| 2 | Open | — | Windows／关联应用；按系统默认关联打开 |
| 3 | Open in new tab | — | Windows／关联应用；在新标签页浏览 |
| 4 | Open in new window | — | Windows／关联应用；在新窗口浏览 |
| 5 | Empty Recycle Bin | — | Windows／关联应用；永久清空回收站 |
| 6 | Pin to Quick access | — | Windows／关联应用；固定到快速访问 |
| 7 | Pin to Start | — | Windows／关联应用；固定到开始菜单 |
| 8 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 9 | Create shortcut | — | Windows／关联应用；创建快捷方式 |

## 31. 回收站内已有项目（不执行命令）

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Delete | — | Windows／关联应用；删除选中对象 |
| 3 | Restore | — | Windows／关联应用；从回收站还原项目 |
| 4 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |

## 32. 桌面空白处

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Paste | — | Windows／关联应用；粘贴剪贴板中的对象 |
| 2 | View | — | Windows／关联应用；改变显示方式 |
| 3 | Sort by | — | Windows／关联应用；设置排序规则 |
| 4 | Refresh | — | Windows／关联应用；刷新当前视图 |
| 5 | New | — | Windows／关联应用；新建对象或文档 |
| 6 | Display settings | — | Windows／关联应用；打开显示设置 |
| 7 | Personalize | — | Windows／关联应用；打开个性化设置 |
| 8 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 9 | Open Command Prompt here | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 10 | Open CMD here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 11 | Open PowerShell here | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 12 | Open PowerShell here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 13 | Open Git Bash here | 下方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 14 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 15 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 16 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 17 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

待确认（配置保留匹配规则，系统或软件不一定提供）：View、Rename with PowerRename。

## 33. 任务栏空白处

| 顺序 | 菜单项 | 来源／用途 |
| --- | --- | --- |
| 1 | Task Manager | 自定义入口调用 Windows；打开任务管理器 |
| 2 | Taskbar settings | 自定义入口调用 Windows；打开任务栏设置 |

## 34. 此电脑（桌面命名空间）

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Rename | — | Windows／关联应用；重命名 |
| 2 | Delete | — | Windows／关联应用；删除选中对象 |
| 3 | Open | — | Windows／关联应用；按系统默认关联打开 |
| 4 | Open in new tab | — | Windows／关联应用；在新标签页浏览 |
| 5 | Open in new window | — | Windows／关联应用；在新窗口浏览 |
| 6 | Map network drive... | — | Windows／关联应用；映射网络位置为驱动器 |
| 7 | Disconnect network drive... | — | Windows／关联应用；断开已映射网络驱动器 |
| 8 | Pin to Quick access | — | Windows／关联应用；固定到快速访问 |
| 9 | Pin to Start | — | Windows／关联应用；固定到开始菜单 |
| 10 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 11 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 12 | Manage | — | Windows／关联应用；打开计算机管理 |


## 35. 其余单个文件：通用兜底菜单

例如 `.cs`、`.cpp`、`.h`、`.js`、`.ts`、`.tsx`、`.yaml`、`.toml`、`.ini`、`.nss`、`.pdf`、未知后缀及无扩展名文件。通用排序与 TXT 相同；Open with 和原生辅助功能以系统实际提供为准。

| 顺序 | 菜单项 | 分隔线 | 来源／用途 |
| --- | --- | --- | --- |
| 1 | Cut | — | Windows／关联应用；剪切选中对象，随后粘贴以移动 |
| 2 | Copy | — | Windows／关联应用；复制选中对象 |
| 3 | Rename | — | Windows／关联应用；重命名 |
| 4 | Delete | — | Windows／关联应用；删除选中对象 |
| 5 | Open | — | 自定义入口；调用系统默认关联打开选中对象 |
| 6 | Open with | — | Windows／关联应用；选择打开此文件的应用 |
| 7 | Copy as path | — | Windows／关联应用；复制完整路径 |
| 8 | Properties | 下方 | Windows／关联应用；查看属性和权限等信息 |
| 9 | Add to archive (Bandizip)... | — | Bandizip；压缩／解压 |
| 10 | Create shortcut | — | Windows／关联应用；创建快捷方式 |
| 11 | Send to Desktop (create shortcut) | — | Windows Send to；在桌面为选中文件／文件夹创建快捷方式 |
| 12 | Create Checksum File... | — | HashCheck；生成文件校验值 |
| 13 | Unlock with File Locksmith | — | PowerToys；查看并解除文件占用 |
| 14 | Rename with PowerRename | 下方 | PowerToys；批量重命名 |
| 15 | Open Command Prompt here | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 16 | Open CMD here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 17 | Open PowerShell here | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 18 | Open PowerShell here (Administrator) | — | 以管理员身份在当前目录打开；需要确认权限 |
| 19 | Open Git Bash here | 下方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 20 | Open with Notepad | 上方 | 自定义入口；用对应程序打开选中对象／当前目录 |
| 21 | Open with VS Code | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 22 | Open with Visual Studio | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 23 | Open with IntelliJ IDEA | — | 自定义入口；用对应程序打开选中对象／当前目录 |
| 24 | Open with PyCharm | — | 自定义入口；用对应程序打开选中对象／当前目录 |

## 36. 未列出格式的分类扩展

原有 21 种扩展名优先，完全沿用 01—26 中已选规则。下列分类只接管新增扩展名。所有新增分类都有 CMD、PowerShell、Git Bash 和 IDE；记事本按所参照类别保留。类别专用菜单依赖原生扩展，不会伪造安装、运行、解压等命令。未匹配类别的文件一律进入第 35 节，因此不需要穷举所有后缀。

| 类别 | 新增扩展名 | 行为 |
| --- | --- | --- |
| 图片 | `.jpg`、`.jpeg`、`.jpe`、`.jfif`、`.bmp`、`.gif`、`.webp`、`.tif`、`.tiff`、`.ico`、`.heic`、`.heif`、`.avif`、`.svg`、`.psd`、`.raw`、`.dng`、`.cr2`、`.nef` | 参照原 sample.png；只保留软件实际提供的专用功能 |
| 压缩包与磁盘映像 | `.7z`、`.rar`、`.tar`、`.gz`、`.bz2`、`.xz`、`.tgz`、`.tbz2`、`.txz`、`.zst`、`.cab`、`.iso`、`.img`、`.wim`、`.esd`、`.zipx`、`.arj`、`.lzh`、`.lzma`、`.lz4` | 参照原 sample.zip；只保留软件实际提供的专用功能 |
| 音频、视频及播放列表 | `.mp3`、`.flac`、`.aac`、`.m4a`、`.ogg`、`.opus`、`.wma`、`.aiff`、`.ape`、`.mid`、`.midi`、`.mp4`、`.mkv`、`.avi`、`.mov`、`.wmv`、`.webm`、`.m4v`、`.mpeg`、`.mpg`、`.m2ts`、`.mts`、`.flv`、`.vob`、`.3gp`、`.m3u`、`.m3u8`、`.pls` | 参照原 sample.wav；只保留软件实际提供的专用功能 |
| 字体 | `.otf`、`.ttc`、`.fon`、`.fnt`、`.woff`、`.woff2` | 参照原 sample.ttf；只保留软件实际提供的专用功能 |
| Office 文档 | `.doc`、`.docm`、`.dot`、`.dotx`、`.dotm`、`.xls`、`.xlsm`、`.xlsb`、`.xlt`、`.xltx`、`.xltm`、`.ppt`、`.pptm`、`.pot`、`.potx`、`.potm`、`.pps`、`.ppsx`、`.ppsm`、`.odt`、`.ods`、`.odp`、`.rtf` | 参照原 sample.docx；只保留软件实际提供的专用功能 |
| 程序 | `.com`、`.scr`、`.pif`、`.cpl`、`.msc` | 参照原 sample.exe；只保留软件实际提供的专用功能 |
| 脚本 | `.vbs`、`.vbe`、`.wsf`、`.wsh`、`.jse`、`.hta` | 参照原 sample.ahk；只保留软件实际提供的专用功能 |
| 安装包 | `.msi`、`.msp`、`.msix`、`.msixbundle`、`.appx`、`.appxbundle` | 参照原 sample.ttf；只保留软件实际提供的专用功能 |
| 网页快捷方式 | `.url`、`.website` | 参照原 sample.lnk；只保留软件实际提供的专用功能 |

`.ts` 按 TypeScript 源码走通用菜单，不根据扩展名把它当视频。多选同类型、不同类型及混合选择继续由原第 12—15 节接管，新增单选规则不会叠加。回收站和虚拟对象继续使用原独立规则。

## 37. 本次扩展的验证范围

已在资源管理器中检查真实的 `scripts/SendToNative.cs`，以及 `.jpg`、`.7z`、`.mp4`、`.msi`、未知扩展名、无扩展名样本和六种格式混合多选。上述已显示的菜单项目均有图标，顺序和分组正常；混合多选没有叠加各单选类别的菜单。

- `.cs`、未知扩展名和无扩展名显示通用 22 项菜单。
- 图片保留照片编辑、调整大小；压缩包保留Extract to named folder；视频保留 PotPlayer 播放和加入播放列表；安装包保留 Install。专用功能仍以软件实际注册的命令为准。
- 已修正新增分类中终端入口的排序锚点，以及 PotPlayer 带快捷键后缀的名称匹配。
- 原有 `table-order.nss` 保持不变；新增分类与原有 21 种扩展名互斥，其余扩展名及无扩展名由通用规则覆盖。

此次新增样本为空文件，仅验证菜单显示，未执行安装、播放、解压等操作；不等于逐一验证所有文件格式的实际打开行为。临时测试文件已清理，回退备份保留在 `config-backup-before-all-files`。

## English menu labels

所有配置定义的菜单标题已统一为英文；中文原生菜单匹配条件保留，用于兼容软件的中文注册项。功能、图标、显示条件与分组顺序保持不变。此次修改前的配置和文档备份在 `config-backup-before-english`。

验证：资源管理器已重新加载；抽查 C# 通用菜单和 PowerShell 原有菜单，显示为英文，图标、排序及专用入口正常。静态检查确认两份配置中的所有 title 均无中文，命令与显示条件未改变。
