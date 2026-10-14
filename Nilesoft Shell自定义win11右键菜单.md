# Nilesoft Shell自定义win11右键菜单

当前配置保留已选项目，隐藏未选项目；34 类场景分别排序。已选管理员运行入口保留，IDE 统一为“Open with ××”。未列出的文件扩展名由 imports/all-files.nss 按类别或通用规则接管（含无扩展名文件），并使用统一的默认关联 Open 入口；有 Open with 时将 Open 放在其上方，两项均设置图标。

## 必需文件

| 文件 | 用途 |
| --- | --- |
| shell.exe、shell.dll | Nilesoft Shell 1.9.18 程序，架构须匹配新电脑 |
| shell.nss、imports/theme.nss、imports/images.nss、imports/all-files.nss、imports/table-order.nss | 完整配置；保留目录结构 |
| LICENSE、readme.txt | 原软件许可证与说明 |
| win11电脑右键菜单_表格.md、本文 | 目标菜单清单、恢复说明 |

“Send to Desktop (create shortcut)”需要 `scripts/SendToNative.exe`，必须备份。`SendToNative.cs` 和 `Build-SendToNative.ps1` 保留用于维护及重新编译。

入口适用于文件／文件夹及多选，调用 Windows 目标 `Desktop (create shortcut)`。新电脑语言不同，可在本目录执行 `./scripts/SendToNative.exe --list ./发送目标.txt '实际文件路径'` 枚举，再将 `imports/table-order.nss` 中的目标名称改为实际值。

只需备份本目录即可保存配置；测试截图、旧备份及采集工具已清理。系统会按需重新生成 shell.log。

## 安装与启用

1. 将程序与配置放在固定目录；注册后不要直接移动。
2. 安装所需应用，核对下一节路径。复制配置不会安装应用或恢复文件关联。
3. 结束资源管理器正在执行的文件复制／移动，再以管理员身份打开 PowerShell 执行：

```powershell
Set-Location -LiteralPath 'D:/win11/LookUp_ImproveMethods/Nilesoft Shell'
./shell.exe -register -restart
```

路径按新电脑修改。注册命令会重启资源管理器；已启用后，编辑配置可用 **Ctrl＋右键**重载。参考 [官方安装说明](https://nilesoft.org/docs/installation)。

## 路径与修改位置

| 应用 | 当前路径 |
| --- | --- |
| VS Code | D:/Microsoft VS Code/Code.exe |
| Visual Studio | D:/Microsoft Visual Studio/Enterprise2022/Common7/IDE/devenv.exe |
| IntelliJ IDEA | D:/IntelliJ IDEA 2025.2.1/bin/idea64.exe |
| PyCharm | D:/PyCharm 2025.2.1.1/bin/pycharm64.exe |
| Git Bash | D:/Git/git-bash.exe |

直接编辑时，在 `imports/table-order.nss` 和 `imports/all-files.nss` 同时修改同一程序的所有 `cmd`、`image`、`io.file.exists` 路径。不存在的程序入口自动隐藏。CMD、PowerShell、记事本使用系统目录变量。

原有明确场景编辑 `imports/table-order.nss`，新增格式分类和兜底编辑 `imports/all-files.nss`；当前菜单 Markdown 仅用于查看和规划，修改它不会自动生效。修改前自行备份配置。

原有 Windows、PowerToys、Bandizip、HashCheck、PotPlayer 等命令保留原实现，仍依赖软件注册和菜单名称。软件升级或系统语言改变后需要重新核对。仅存在于 Win11 新版菜单中的扩展，不保证能被 Nilesoft 显示；菜单表中的待确认项不代表已实现。

## 检查与回退

- 按当前菜单表检查单选、多选、空白处、磁盘及虚拟文件夹。
- 检查 Properties 后、CMD 前、Git Bash 后、记事本前、PowerRename 后的分隔线；相邻分隔线合并，末尾分隔线可能被程序自动省略。
- 加载失败查看 `shell.log`；入口打不开先检查程序路径。
- 回退后续修改：恢复你修改前备份的 NSS 文件，再重载。
- 停用：在本目录以管理员身份执行 `./shell.exe -unregister -restart`。

## 禁用 Bandizip 右键压缩预览

此功能由 Bandizip 自己控制，单独复制 NSS 不会迁移该设置。安装 Bandizip 后，在它的“设置 → 右键菜单”中关闭压缩文件预览；当前电脑对应值为 `HKCU\Software\Bandizip` 的 DWORD `shell_Preview=0` 和 `shell_PreviewWithTree=0`（普通预览与树形预览都关闭）。可在当前用户 PowerShell 中执行：

```powershell
Set-ItemProperty -LiteralPath 'HKCU:\Software\Bandizip' -Name shell_Preview -Value 0
Set-ItemProperty -LiteralPath 'HKCU:\Software\Bandizip' -Name shell_PreviewWithTree -Value 0
```

仅在该注册表项存在时执行。此设置不关闭解压／压缩操作。

## 所有文件覆盖与本次回退

`imports/all-files.nss` 必须在 `imports/table-order.nss` 之前导入。新增分类彼此互斥，并排除原有 21 种扩展名；通用兜底再排除所有分类，覆盖源码、PDF、未知及无扩展名文件。多选仍沿用原规则。

本次修改前的入口配置和两份文档在 `config-backup-before-all-files`。如需回退，恢复其中的 `shell.nss` 和文档，再 Ctrl＋右键重载；新的 `all-files.nss` 将不再被导入。备份内不需要重复存放未修改的原规则文件。


## English menu labels

所有配置定义的菜单标题已统一为英文；中文原生菜单匹配条件保留，用于兼容软件的中文注册项。功能、图标、显示条件与分组顺序保持不变。此次修改前的配置和文档备份在 `config-backup-before-english`。
