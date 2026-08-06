# CUMCM

- LaTeX Template for China Undergraduate Mathematical Contest in Modeling
- 中国大学生数学建模竞赛LaTeX模板
- 项目地址: [cumcm](https://github.com/jayxin/cumcm)
- 本项目在[latexstudio](https://github.com/latexstudio/CUMCMThesis)的[CUMCMThesis](https://github.com/latexstudio/CUMCMThesis)项目基础上修改和添加内容，并调整了项目结构，使整个项目结构更清晰，方便使用和维护。在此感谢原作者[latexstudio](https://github.com/latexstudio/CUMCMThesis)的贡献！

## 文件列表

```none
.
├── commons/ 模板
│   ├── cumcmthesis.cls 基础模板
│   └── preamble.tex 用户自定义加载宏包、命令、环境等
├── contents/ 内容
│   ├── abstract.tex 摘要
│   ├── appendix/ 附录
│   ├── info.tex 论文基本信息
│   ├── references.tex 参考文献
│   └── sections/ 正文内容
├── docs/ 文档(包括论文格式说明文档等)
│   ├── 2026高教社杯全国大学生数学建模竞赛第一次通知.pdf
│   ├── 全国大学生数学建模竞赛论文格式规范-2019年修订稿.pdf
│   └── 全国大学生数学建模竞赛论文格式规范-2026年修订稿.pdf
├── figures/ 存放论文用到的图片文件
├── fonts/ 存放字体文件
├── .gitignore git 版本控制忽略文件
├── latexmkrc latexmk 配置文件
├── LICENSE.txt 使用许可
├── main.tex **主文档(编译入口文档, Main Document)**
└── README.md 项目说明
```

## 编译

### 本地编译

- 使用前提: 本地已装好 LaTeX 的发行版如 TeXLive
- 已测试环境:
	+ 操作系统 - Linux
	+ LaTeX 发行版 - TeXLive 2023

#### 方法1-用 xelatex 编译

需手动编译多次，引用等内容才能正确显示。

```sh
xelatex main
```

#### 方法2-用 latexmk 编译

自动编译多次:

```sh
latexmk main
```

清理辅助文件(`log`、`aux`等):

```sh
latexmk -c main
```

清理辅助文件(`log`、`aux`等)和 `pdf`:

```sh
latexmk -C main
```

### 在线编译

- 可使用在线的编译平台进行编译如:
	+ [TeXPage](https://texpage.com)
	+ [OverLeaf](https://overleaf.com)
- 已测试平台: TeXPage, 进行编译前需保证如下设置
	+ 编译器: `xelatex`
	+ TeXLive 版本: 2023
	+ 主文档(Main Document): main.tex

## 文档类选项说明

本项目文档类(Document Class)目前支持下面的选项:
- `draft`: 是否嵌入图片和代码, 默认嵌入。
- `bwprint`: 黑白打印。
- `colorprint`: 彩色打印(默认)。
- `withoutpreface`: 最终文档不包含前言(承诺书和编号页), 不加这个选项则默认包含。根据最新的要求，电子版文档不需要前言，请根据具体的通知和要求进行相应调整。

<!-- vim: set noet: -->
