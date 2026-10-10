# Windows Context Menu Config

基于 [Nilesoft Shell](https://nilesoft.org/) 的 Windows 11 右键菜单配置，覆盖 34 类文件、文件夹、空白处和系统对象场景。

## 功能

- 按场景筛选菜单、调整顺序和分隔线。
- Open 紧邻 Open with 上方，两项都有图标；文件通过系统默认关联打开。
- CMD、PowerShell、Git Bash，以及命名统一的 VS Code、Visual Studio、IntelliJ IDEA、PyCharm 入口。
- 文件／文件夹的 Create shortcut 后添加“发送到桌面快捷方式”，支持多选。
- 任务栏保留 Task Manager、Taskbar settings，并提供图标。
- 提供关闭 Bandizip 普通／树形右键预览的方法。

## 安装

适用环境：Windows 11；配置在 Nilesoft Shell 1.9.18 x64 上使用过。其他系统、版本、软件注册状态与语言需要自行核对。

1. 从 [Nilesoft 官方网站](https://nilesoft.org/download)安装匹配架构的程序，先备份已有配置。
2. 下载本仓库，将 `shell.nss`、`imports`、`scripts` 复制到 Nilesoft 安装目录。
3. 在 **Windows PowerShell 5.1** 中进入该目录，编译桌面快捷方式辅助程序：

   ```powershell
   powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\scripts\Build-SendToNative.ps1
   ```

4. 修改 `imports/table-order.nss` 中的应用路径。现有 `D:` 路径是示例安装路径，必须按自己的电脑调整；同一程序的 `cmd`、`image`、`io.file.exists` 一起修改。路径不存在时，对应入口隐藏。
5. 尚未启用 Nilesoft 时，以管理员身份运行 `./shell.exe -register -restart`。该命令会重启资源管理器，先结束正在进行的文件复制／移动。已启用时，可用 **Ctrl＋右键**重新加载配置。

本仓库仅包含配置和辅助程序源码，**不附带 shell.exe、shell.dll 或 SendToNative.exe**。运行时仍需要这些程序；无需安装 Python。

## 文档与修改位置

| 文件 | 用途 |
| --- | --- |
| [当前菜单清单](当前右键菜单_表格版.md) | 各场景的菜单项目、顺序和分隔线 |
| [重装恢复说明](重装恢复说明.md) | 迁移、路径调整、Bandizip 预览设置、停用方式 |
| `imports/table-order.nss` | 菜单筛选、排序及应用命令 |
| `imports/theme.nss`、`imports/images.nss` | 外观与图标 |
| `scripts/SendToNative.cs` | 调用 Windows 原生 Send to 的辅助程序源码 |

Markdown 菜单表用于查看和规划，编辑它不会自动改变菜单；实际规则在 NSS 文件中。

## 适配说明

- 第三方入口需要对应应用实际安装和注册。本配置不会安装应用，也不会修改默认文件关联。
- 菜单名称匹配兼容部分中英文名称，但并不覆盖所有系统语言和软件版本。
- 桌面发送目标默认名为 `Desktop (create shortcut)`。非英语 Windows 如不可用，按恢复说明枚举实际 Send to 目标并修改名称。
- 此配置只显式排序表中场景；其他扩展名保留系统菜单及统一 Open 入口。
- 配置保留了部分管理员运行项；选择相应命令时可能出现 UAC 提示。
- 部分仅由 Windows 11 新版菜单提供的命令，在 Nilesoft 中可能不可用，菜单表已标注待确认项目。
- Bandizip 的预览开关属于其自身注册表设置，复制 NSS 不会迁移；恢复说明提供了两个需要关闭的开关。

已进行文件／文件夹／多选、任务栏及 ZIP 场景检查；这不代表所有应用命令和全部 Windows 环境均经过端到端测试。

## 来源

Nilesoft Shell 官方项目：[moudey/Shell](https://github.com/moudey/Shell)。本仓库是个人配置，非官方发行版。保留原项目 [MIT 许可证](LICENSE)及 Nilesoft 版权声明。
