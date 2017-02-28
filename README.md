##简介
此配置主要分为三个文件：
vimrc -- 主配置
vimrc.plugin.conf -- 插件列表
vimrc.plugin.list -- 插件配置

配置文件结构清晰，开头处有目录，按 `*` 键跳转到目录对应的具体配置处，按`Ctrl+O`跳转回到目录。  
**vimrc 目录列表**

    "file文件
    "history&undo历史&撤销
    "read&write文件读写
    "backup备份文件
    "swapfile交换文件
    "format&coding格式&编码
    "view视图
    "linebreak换行
    "search搜索
    "indent&tab缩进&制表符
    "fold折叠
    "scroll滚屏
    "cursor光标
    "highlight高亮
    "the_custom_color_configuration自定义色彩设置
    "statusline状态栏
    " 改变默认快捷键
    " 标签页操作
    " 导入vim插件管理文件
    " 编辑新文件时读入样板
    " 把整个缓冲区写回到文件前更改时间戳
    " 一键编译运行
    " 环境保存

**vimrc.plugin.list 目录列表**

    "colorschemes主题
    "view视图
    "tag标签
    "search搜索&替换
    "snippet模板补全
    "括号引号等结对符号匹配
    "undo&git
    "_project
    "other_plugins
    "C_&_C++
    "MarkDown
    "TeX
    "Java
    "Python
    "Perl
    "php
    "go
    "json
    "HTML
    "CSS
    "JavaScript

**vimrc.plugin.conf 目录列表**

    "gundo_undotree
    "vim_indent_guides_缩进可视化
    "fswitch_接口与实现快速切换
    "wildfire_快速选中结对符内的文本
    "tabular_快速对齐
    "ctags_基于标签的代码导航
    "YouCompleteMe_基于语义的代码导航
    "tagbar_标签列表
    "NERDTree_工程文件浏览
    "ctrlsf_vim_工程内全局查找光标所在关键字
    "替换函数
    "UltiSnips_模板补全
    "YouCompleteMe补全菜单
    "由接口快速生成实现框架
    "syntastic_语法检查

##自定义色彩主题  
此配置默认采用solarized主题，由于其在URxvt/XTerm等终端模拟器的256色环境中显示效果不尽如人意，我在vimrc文件highlight设置部分进行了修改。 如果你要修改色彩设置就在highlight部分后修改，因为自定义色彩设置要放在colorscheme和syntax on后才能生效。如果要修改终端模拟器里的vim色彩，我写了一个[生成256色表的bash脚本](https://github.com/philosophos/show256color)可供参考。  
  
[solarized主题](http://ola3xakol.bkt.clouddn.com/vim/0.png)
[修改后的主题](http://ola3xakol.bkt.clouddn.com/vim/1.png)
  
##安装  
vim是肯定要有的，说说插件吧。  
  
ctags ycm 可用包管理器(apt/aptitude/yum/dnf/pacman/yaourt)安装  
[ctags/exuberant-ctags](http://ctags.sourceforge.net)       生成代码标签，支持41种语言  
[YCM/YouCompleteMe](https://github.com/Valloric/YouCompleteMe)          语义补全  
  
python模块可用pip安装  

    pep8                Python代码分析  
    pyflakes            Python语法检查  
    pylint              Python代码分析  
  
建议把配置文件都放在~/.vim目录下  

    cd ~  
    git clone https://github.com/philosophos/easy-vimrc.git  
    mv easy-vimrc .vim  
  
插件管理使用[vim-plug](https://github.com/junegunn/vim-plug)  
插件管理命令：  

    :PlugInstall    安装在插件列表中的插件  
    :PlugUpdate     更新在插件列表中的插件  
    :PlugUpgrade    更新vim-plug  
    :PlugClean      删除不在插件列表中的插件  
    :PlugStatus     查看在插件列表中的插件状态  
打开~/.vim/vimrc.plug.list,用"注释掉不需要的插件，然后:PlugInstall  
  
  
##自定义快捷键  

    Space                                 全局快捷键的前缀，即leader  
    ,                                     局部快捷键的前缀，localleader  
    ;                                     从普通模式进入命令模式  
    U                                     取消上一次undo  
    +                                     打开折叠  
    -                                     关闭折叠  
    <C-\> {file}                          左右分屏并在新窗口打开{file}  
    <leader><F1> :vert help               左右分屏并在新窗口打开help  
    <leader>/                             取消搜索结果高亮  

###光标移动  

    C-a                                   光标移到行首  
    C-e                                   光标移到行尾  
    C-h                                   光标移到左边窗口  
    C-j                                   光标移到下边窗口  
    C-k                                   光标移到上边窗口  
    C-l                                   光标移到右边窗口  

###切换标签页  

    <leader>1                             第1个标签页  
    <leader>2                             第2个标签页  
    <leader>3                             第3个标签页  
    <leader>4                             第4个标签页  
    <leader>5                             第5个标签页  
    <leader>6                             第6个标签页  
    <leader>7                             第7个标签页  
    <leader>8                             第8个标签页  
    <leader>9                             第9个标签页  
    <leader>0                             第10个标签页  
    <leader>th                            第一个标签页  
    <leader>tl                            最后一个标签页  
    <leader>tj                            上一个标签页  
    <leader>tk                            下一个标签页  
    <leader>tt                            上一个活跃的标签页  

###其他标签页操作  

    C-t {file}                            打开新标签页并编辑 {file}，其余和 :edit 类同。  
    <leader>tb {cmd}                      执行 {cmd}，如果它打开新窗口，使用新标签页代替。  
    <leader>td                            关闭标签页  
    <leader>tm [N]                        把当前标签页移到第 N 个标签页之后。  
                                            用 0 使当前标签页成为首个标签页。  
                                            如果没有 N，当前标签页成为最后一个。  
    <leader>tm +[N]                       移动当前标签页向右 (用 + 的话)N 个位置。  
    <leader>tm -[N]                       移动当前标签页向左 (用 - 的话)N 个位置。  
  

##更多VIM资料  
  
vim中文文档
[Sourceforget](https://sourceforget.net/projects/vimcdoc/files)
[GitHub](https://github.com/vimcn/vimcdoc)

[Exuberant Ctags中文手册 – 易水博客](
http://easwy.com/blog/archives/exuberant-ctags-chinese-manual/)  

[vimrc编辑](http://www.cnblogs.com/starspace/archive/2009/03/03/1402305.html)  
[易水博客：vim使用进阶](
http://easwy.com/blog/archives/advanced-vim-skills-catalog/)  
[vimer的程序世界](http://www.vimer.cn/category/vim)  
[vim-闲耘.wiki](http://wiki.hotoo.me/Vim.html)  
[Vim_Tips_Wiki](http://vim.wikia.com/wiki/Vim_Tips_Wiki)  
[Vim与系统粘贴板之间实现复制、粘贴](
http://apneng.net/2015/05/01/copy-between-vim-and-os.html)  
