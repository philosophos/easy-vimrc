##自定义色彩主题  
此配置默认采用solarized主题，由于其在URxvt/XTerm等终端模拟器的256色环境中显示效果不尽如人意，我在vimrc文件highlight设置部分进行了修改。 如果你要修改色彩设置就在highlight部分后修改，因为自定义色彩设置要放在colorscheme和syntax on后才能生效。如果要修改终端模拟器里的vim色彩，我写了一个[生成256色表的bash脚本](https://github.com/philosophos/show256color)可供参考。  
   
![solarized主题](http://ola3xakol.bkt.clouddn.com/png/easy-vimrc/20170213-024735_1916x1050_urxvt.png)
![修改后的主题](http://ola3xakol.bkt.clouddn.com/png/easy-vimrc/20170212-230209_1916x1050_urxvt.png)
   
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
  
Space                     &emsp;全局快捷键的前缀，即leader  
,                          &emsp;&emsp;&emsp;局部快捷键的前缀，localleader  
;                          &emsp;&emsp;&emsp;从普通模式进入命令模式  
U                          &emsp;&emsp;&emsp;取消上一次undo  
\+                         &emsp;&emsp;&emsp;打开折叠  
\-                         &emsp;&emsp;&emsp;关闭折叠  
\<C-\\> {file}             &emsp;&emsp;&emsp;左右分屏并在新窗口打开{file}  
\<leader>\<F1> :vert help  &emsp;左右分屏并在新窗口打开help  
\<leader\>/                &emsp;&emsp;&emsp;取消搜索结果高亮  
  
####光标移动  
C-a                    &emsp;&emsp;光标移到行首  
C-e                    &emsp;&emsp;光标移到行尾  
C-h                    &emsp;&emsp;光标移到左边窗口  
C-j                    &emsp;&emsp;光标移到下边窗口  
C-k                    &emsp;&emsp;光标移到上边窗口  
C-l                    &emsp;&emsp;光标移到右边窗口  
  
####标签页操作  
切换标签页  
\<leader>1    &emsp;&emsp;第1个标签页  
\<leader>2    &emsp;&emsp;第2个标签页  
\<leader>3    &emsp;&emsp;第3个标签页  
\<leader>4    &emsp;&emsp;第4个标签页  
\<leader>5    &emsp;&emsp;第5个标签页  
\<leader>6    &emsp;&emsp;第6个标签页  
\<leader>7    &emsp;&emsp;第7个标签页  
\<leader>8    &emsp;&emsp;第8个标签页  
\<leader>9    &emsp;&emsp;第9个标签页  
\<leader>0    &emsp;&emsp;第10个标签页  
\<leader\>th  &emsp;&emsp;第一个标签页  
\<leader\>tl  &emsp;&emsp;最后一个标签页  
\<leader\>tj  &emsp;&emsp;上一个标签页  
\<leader\>tk  &emsp;&emsp;下一个标签页  
\<leader\>tt  &emsp;&emsp;上一个活跃的标签页  
  
C-t {file}          &emsp;&emsp;&emsp;&emsp;&emsp;打开新标签页并编辑 {file}，其余和 :edit 类同。  
\<leader\>tb {cmd}  &emsp;&emsp;执行 {cmd}，如果它打开新窗口，使用新标签页代替。  
\<leader\>td        &emsp;&emsp;&emsp;&emsp;关闭标签页  
\<leader\>tm \[N]   &emsp;&emsp;把当前标签页移到第 N 个标签页之后。  
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;用 0 使当前标签页成为首个标签页。    
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;如果没有 N，当前标签页成为最后一个。    
\<leader\>tm +\[N]  &emsp;&emsp;移动当前标签页向右 (用 + 的话)N 个位置。  
\<leader\>tm -\[N]  &emsp;&emsp;移动当前标签页向左 (用 - 的话)N 个位置。  
  
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
