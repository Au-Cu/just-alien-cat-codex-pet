# JUST外星猫 Codex Pet

基于 [Au-Cu/just-big-cat-codex-pet](https://github.com/Au-Cu/just-big-cat-codex-pet) 的独立绿色外星猫版本，采用本次对话中用户选定的**第一版**图像，未采用第二版修订。

![第一帧预览](preview/base-preview.png)

## 安装

Windows：解压完整安装包，在本文件所在目录打开 PowerShell，执行：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\install.ps1
```

macOS / Linux：

```sh
sh ./install.sh
```

默认安装到 `~/.codex/pets/just-alien-cat`；若设置了 `CODEX_HOME` 则安装到其 `pets/just-alien-cat` 子目录。独立 ID 不会覆盖原版 `just-big-cat`。安装后按原项目说明在 Codex 的 Settings > Pets 刷新并选择 JUST外星猫，必要时重启。

手动安装：新建上述 `just-alien-cat` 文件夹，将 `pet/pet.json` 与 `pet/spritesheet.webp` 直接复制进去。

## 素材与验证

- RGBA 无损 WebP，1536 × 2288，8 列 × 11 行，每格 192 × 208。
- 沿用原项目 9 组动作及最后两行 16 方位的布局，共 74 个有效帧。
- `preview/selected-first-version.png` 为选定的原始生成结果；精灵图仅做尺寸规范化及格式转换。
- 第一版保留了生成结果中的少量嘴部短线，部分眼睛仍接近原版；按用户“用第一版就行”的选择原样保留外观。
- `qa/validation.json` 检查尺寸、透明通道与有效格占用。图像生成不能保证与原素材逐像素一致，未在运行中的 Codex 宠物窗口实测播放。

## 来源

原版提交：`aa97d98915999009ee60419d30a086a3846c1d59`。

JUST大猫 Codex Pet artwork by Au-Cu and contributors, licensed under CC BY 4.0.

本版本修改角色配色与面部外观。代码和文档许可证见 LICENSE，视觉素材许可证见 ASSET-LICENSE.md，第三方权利声明见 NOTICE.md。
