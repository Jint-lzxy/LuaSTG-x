# LuaSTG-x

### [English Readme](README.md) | 中文简介

---

LuaSTG-x 是一个基于 [cocos2d-x](https://github.com/cocos2d/cocos2d-x) 和 [LuaSTGPlus](https://github.com/9chu/LuaSTGPlus) 的多平台游戏引擎。其目标是为 [清版射击游戏](https://zh.wikipedia.org/wiki/%E6%B8%85%E7%89%88%E5%B0%84%E5%87%BB%E6%B8%B8%E6%88%8F) 和 [弹幕射击游戏](https://zh.wikipedia.org/wiki/%E5%BD%88%E5%B9%95%E5%B0%84%E6%93%8A%E9%81%8A%E6%88%B2) 提供好用的引擎。

---

## [图片演示](https://github.com/Xrysnow/LuaSTG-x/wiki/%E5%9B%BE%E7%89%87%E6%BC%94%E7%A4%BA) | [核心API手册（英文）](https://github.com/Xrysnow/LuaSTG-x/wiki/Core_API_Manual) | [更新日志](https://github.com/Xrysnow/LuaSTG-x/wiki/%E6%9B%B4%E6%96%B0%E6%97%A5%E5%BF%97)

## 下载

完整发布版本下载：

- [百度网盘](https://pan.baidu.com/s/11TeRowwODzz7ZjMEmeJkbA) (提取码：bmna)
- [mega](https://mega.nz/folder/WVAQwYzA#X9g-KiulLMUZfdn8DDV72g)

## 主要特性

- 来自 [cocos2d-x](https://github.com/cocos2d/cocos2d-x) 的完整 2D 游戏引擎功能
- [多平台的音频引擎](https://github.com/Xrysnow/lstgx_Audio)，支持声音效果
- [多平台的视频引擎](https://github.com/Xrysnow/lstgx_Video)，基于 FFmpeg
- 基于 [creator_to_cocos2dx](https://github.com/cocos2d/creator_to_cocos2dx) 的 Cocos Creator 支持
- [Live2D 支持及 Lua 绑定](https://github.com/Xrysnow/cocos2d-x-live2d)
- [ImGui 支持及 Lua 绑定](https://github.com/Xrysnow/cocos2d-x-imgui)
- 多线程优化

## 相关链接

- [LuaSTG-x GitHub Wiki](https://github.com/Xrysnow/LuaSTG-x/wiki)
- [LuaSTG-x Lua API 文档](https://xrysnow.github.io/lstgx_Doc)
- [百度贴吧](https://tieba.baidu.com/f?kw=luastg)
- [LuaSTG Wiki 网站](http://en.luastg.shoutwiki.com/wiki/Main_Page)
- [Bullet Hell Engines Discord 频道](https://discord.gg/4wNvvPHxeU)

## 编译指南

1. 克隆本仓库及子模块（或从 [release 页面](https://github.com/Xrysnow/LuaSTG-x/releases) 下载）

        $ git clone --recursive https://github.com/Xrysnow/LuaSTG-x.git

2. 对于2023年之前的版本，克隆外部库至 `frameworks/cocos2d-x/external` （或从 [release 页面](https://github.com/Xrysnow/cocos2d-x-3rd-party-libs-bin/releases) 下载）

        $ cd LuaSTG-x/frameworks/cocos2d-x/external
        $ git clone --recursive https://github.com/Xrysnow/cocos2d-x-3rd-party-libs-bin.git

3. 若需要使用 live2d 模块，请下载 Cubism SDK （[指南](https://github.com/Xrysnow/cocos2d-x-live2d)）

4. 使用 CMake 生成工程文件 ([指南](https://github.com/cocos2d/cocos2d-x/blob/v4/cmake/README.md)).
   - 若目标为安卓平台，只需用 Android Studio 打开 `frameworks/runtime-src/proj.android`
   - 若目标为 macOS 平台，需要向 CMake 添加 `-GXcode` 参数
   - 若目标为 IOS 平台，需要额外设置 CMake ，你可以找到一些 bash 脚本来实现
   - 若目标为 macOS/IOS 平台，需要打开 `project setting -> TARGETS -> LuaSTG-x -> Build Phases -> Copy Files` 并为 frameworks 勾选 `Code Sigh On Copy`
   - 若目标为 Linux 平台，需要在使用 CMake 前执行 `frameworks/cocos2d-x/install-deps-linux.sh`，默认的 `make` 编译速度较慢，推荐添加 `-GNinja` 参数来使用 `ninja` 编译

5. 使用编译器进行编译

## 编译要求

- CMake 3.20+
- Android Studio 2021.1.1+ 和 NDK r22+
- 编译器支持 C++17 的 Linux (推荐使用Clang)
- macOS 11.3+ 和 Xcode 13+
- Windows 7+ 和 VS 2019+

## 运行要求

运行要求实际上由编译器决定，但大多数情况下应满足如下要求：

- Android 5.0+
- iOS 13+
- macOS 10.15+
- Windows 7+ 和 visual c++ 运行时

注意，iOS 13+ 和 macOS 10.15+ 是必须的，因为需要使用 `std::filesystem` （[来源](https://developer.apple.com/documentation/xcode-release-notes/xcode-11-release-notes)）。

## 依赖图

LuaSTG-x\
├　[cocos-x](https://github.com/Xrysnow/cocos-x)\
│　　└ [cocos-x-external](https://github.com/Xrysnow/cocos-x-external)\
│　　　　├ [cocos2d-x-gfx](https://github.com/Xrysnow/cocos2d-x-gfx)\
│　　　　├ [glslang](https://github.com/KhronosGroup/glslang)\
│　　　　├ [openal-soft](https://github.com/kcat/openal-soft)\
│　　　　└ [SPIRV-Cross](https://github.com/KhronosGroup/SPIRV-Cross)\
├　[cocos2d-x-imgui](https://github.com/Xrysnow/cocos2d-x-imgui)\
│　　├ [ImGui](https://github.com/ocornut/imgui)\
│　　├ [imgui_markdown](https://github.com/juliettef/imgui_markdown)\
│　　├ [ImGuiColorTextEdit](https://github.com/Xrysnow/ImGuiColorTextEdit)\
│　　└ [implot](https://github.com/epezent/implot)\
├　[cocos2d-x-live2d](https://github.com/Xrysnow/cocos2d-x-live2d) (optional)\
│　├ [CubismNativeFramework](https://github.com/Live2D/CubismNativeFramework)\
│　└ [Cubism SDK for Native](https://www.live2d.com/en/download/cubism-sdk/download-native)\
├　[cocos2d-x-video](https://github.com/Xrysnow/cocos2d-x-video)\
│　　└ [FFmpeg](http://ffmpeg.org) (in lstgx_external)\
├　[lstgx_Audio](https://github.com/Xrysnow/lstgx_Audio)\
│　　└ [openal-soft](https://github.com/kcat/openal-soft) (in cocos-x-external)\
├　[lstgx_external](https://github.com/Xrysnow/lstgx_external)\
│　　├ [ANGLE](https://github.com/google/angle) (optional)\
│　　├ [BurstLinker](https://github.com/Xrysnow/BurstLinker)\
│　　├ [FFmpeg](http://ffmpeg.org) (optional)\
│　　├ [libzippp](https://github.com/ctabin/libzippp)\
│　　│　└ [libzip](https://github.com/nih-at/libzip)\
│　　├ [Lua CJSON](https://kyne.com.au/~mark/software/lua-cjson.php)\
│　　├ [luafilesystem](http://keplerproject.github.io/luafilesystem)\
│　　├ [LPeg](http://www.inf.puc-rio.br/~roberto/lpeg)\
│　　├ [MicroTeX](https://github.com/Xrysnow/MicroTeX)\
│　　├ [nanosvg](https://github.com/memononen/nanosvg)\
│　　├ [NativeFileDialog](https://github.com/mlabbe/nativefiledialog)\
│　　└ [Yuescript](https://github.com/pigpigyyy/Yuescript) (optional)\
├　[lstgx_Math](https://github.com/Xrysnow/lstgx_Math)\
└　[lstgx_LuaCore](https://github.com/Xrysnow/lstgx_LuaCore)
