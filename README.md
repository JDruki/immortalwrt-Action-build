<a id="immortalwrt-在线编译"></a>
# ImmortalWrt 在线编译 by oppen321


欢迎来到 ImmortalWrt 的在线编译仓库！该项目通过 GitHub Actions 自动构建适用于各种设备的 ImmortalWrt 固件。无论您是定制固件还是只需要最新的构建，本文档将帮助您快速入门。

## 固件特色

- 自动化构建： GitHub Actions 会根据您的配置自动编译固件。
- 可定制化： 轻松修改配置文件以满足您的特定需求。
- 插件集成： 包含基础系统功能，支持 golang 和 ddns-go。
- 每日更新： 保持固件与 ImmortalWrt 项目的最新变更同步。

## 使用方法

### 1. Fork 此仓库

首先，将此仓库 Fork 到您的 GitHub 账户中。

### 2. 配置您的构建

修改配置文件以指定您所需的设置：

- .config: 包含构建的基础配置。根据需要调整以包含或排除功能和软件包。
- diy-scipt.sh: 自定义预编译设置（例如添加源），后期编译自定义（例如修改镜像，添加主题）。

### 3. 触发构建
1.修改增加仓库TOKEN密钥。
2.配置好设置后，您可以手动触发构建，也可以点击Start激活编译程序根据您的提交自动构建。

### 4. 下载固件

构建完成后，您可以从 GitHub 仓库的 "Actions" 选项卡中下载编译好的固件。

## 插件与软件包

该仓库集成了基础系统功能，包括：

- **Golang 支持**: 完整的 Go 语言开发环境
- **ddns-go**: 高性能动态 DNS 服务

### 自定义插件仓库

如果您想包含额外的插件，只需将它们添加到 configs 目录或在 diy-script.sh 中插入软件插件源。

## 定期更新

该仓库配置为每日更新插件和固件。您可以通过编辑 GitHub Actions 工作流程文件来自定义更新计划。

## 贡献

欢迎贡献！如果您有改进建议、bug 修复或新功能添加，请随时提交 Pull Request。

## 许可证

该项目采用 MIT 许可证。详情请参阅 [LICENSE](LICENSE) 文件。

---

重要提示： 本仓库仅供个人使用和实验。请在刷入自定义固件时保持谨慎。

## 鸣谢

- [ImmortalWrt](https://github.com/immortalwrt/immortalwrt)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [haibo](https://github.com/haiibo/OpenWrt)
- [P3TERX](https://github.com/P3TERX/Actions-OpenWrt)
- 特别感谢开源社区的贡献！

---

维护者： [oppen321](https://github.com/oppen321)


