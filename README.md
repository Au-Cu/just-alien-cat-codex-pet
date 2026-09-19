# JUST外星猫 Codex Pet

基于 JUST大猫改编的绿色外星猫，为 Codex 桌面版提供待机、跑动、挥手、跳跃等动作，以及 16 个观察方向。

![JUST外星猫](preview/base-preview.png)

## 下载

前往 [最新版本下载页](https://github.com/Au-Cu/just-alien-cat-codex-pet/releases/latest)，下载附件中的 `just-alien-cat-codex-pet-版本号.zip`，然后完整解压。

也可以直接下载 [项目 ZIP](https://github.com/Au-Cu/just-alien-cat-codex-pet/archive/refs/heads/main.zip)。解压后打开项目文件夹，应能看到 `install.ps1`、`install.sh` 和 `pet` 文件夹。

## Windows 安装

1. 打开解压后的项目文件夹。
2. 点击文件资源管理器的地址栏，输入 `powershell`，按回车。
3. 在打开的窗口中运行：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\install.ps1
```

看到 `Installed JUST Alien Cat` 表示文件已复制完成。这条命令只对本次运行临时允许脚本执行。

## macOS / Linux 安装

打开终端，进入解压后的项目文件夹，运行：

```sh
sh ./install.sh
```

## 在 Codex 中启用

安装完成后，打开 Codex 的 **Settings（设置）→ Pets（宠物）**，点击 **Refresh（刷新）**，再选择 **JUST外星猫**。

如果列表中没有出现，完全退出 Codex 后重新打开，再刷新一次。

外星猫使用独立名称和目录，可以与 JUST大猫同时安装。

## 手动安装

如果安装脚本无法运行，可以手动复制宠物文件。

打开项目中的 `pet` 文件夹，找到 `pet.json` 和 `spritesheet.webp`。在下列位置新建 `just-alien-cat` 文件夹，将两个文件直接复制进去：

- Windows：`%USERPROFILE%\.codex\pets\just-alien-cat`
- macOS / Linux：`~/.codex/pets/just-alien-cat`

不要再套一层 `pet` 文件夹。最终目录应为：

```text
just-alien-cat/
├─ pet.json
└─ spritesheet.webp
```

如果你设置了 `CODEX_HOME`，请使用该目录下的 `pets/just-alien-cat`；自动安装脚本也会使用这个位置。

复制完成后，在 Codex 中刷新宠物列表。

## 更新与卸载

**更新：** 下载并解压最新版本，再次运行安装脚本，随后刷新宠物列表。仍显示旧内容时，完全退出并重新打开 Codex。

**卸载：** 删除宠物目录中的 `just-alien-cat` 文件夹，再重新打开 Codex。

## 常见问题

**提示找不到安装脚本或宠物文件**

请先完整解压 ZIP，并在包含 `install.ps1` 和 `pet` 文件夹的目录中运行安装命令。

**能看到宠物名称，但图像没有显示**

检查 `pet.json` 和 `spritesheet.webp` 是否直接放在 `just-alien-cat` 文件夹中，文件名是否正确。重新运行安装脚本，然后刷新宠物列表。

## 来源与许可

本项目改编自 [JUST大猫 Codex Pet](https://github.com/Au-Cu/just-big-cat-codex-pet)，修改了角色配色与面部外观，为非官方二创项目。

JUST大猫 Codex Pet artwork by Au-Cu and contributors, licensed under CC BY 4.0.

- 配置、文档和安装脚本：[MIT](LICENSE)
- 视觉素材：[CC BY 4.0](ASSET-LICENSE.md)
- 第三方角色、名称和商标的权利说明：[NOTICE](NOTICE.md)
