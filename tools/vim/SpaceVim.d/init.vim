" colorschemes
" let g:spacevim_colorscheme = 'gruvbox'

set fileencoding=utf-8

" set tags
set tags=tags
"set tags+=./tags
set tags+=/home/wildbook/Code/n8976/external/x264_test/tags



" Here are some basic customizations,
" please refer to the ~/.SpaceVim.d/init.vim
" file for all possible options:

" 默认缩进，默认2
let g:spacevim_default_indent = 4   

" 默认最大列数,默认值120
let g:spacevim_max_column     = 80

" 启用/禁用终端使用真色彩,默认1
let g:spacevim_enable_guicolors = 1

" 启用/禁用google为neocomplete建议,默认0
" let g:spacevim_enable_googlesuggest = 1

" 窗口管理的leader键,默认s，空为禁止
" let g:spacevim_windows_leader = ''

" 设置unite工作流的leader键，默认f 
" let g:spacevim_unite_leader = 'f'

" 设置Denite工作流的leader键，默认F
" let g:spacevim_denite_leader = 'F'
"
" 默认插件缓存位置
" let g:spacevim_plugin_bundle_dir = '~/.cache/vimfiles'

" 启用/禁用实时快捷键提示,默认0
" let g:spacevim_realtime_leader_guide = 1

" 启用/禁用neomake语法检查,默认1
" let g:spacevim_enable_neomake = 0

" 设置SpceVim的gui字体
" let g:spacevim_guifont = 'DejaVu\ Sans\ Mono\ for\ Powerline\ 11'

" 启用/禁止YouCompleteMe自动补全,默认禁止
" let g:spacevim_enable_ycm = 1

" 设置边栏宽度，文件树及语法树。默认30
" let g:spacevim_sidebar_width = 30

" 启用/禁用光标线。默认值为0
" let g:spacevim_enable_cursorline = 1

" 设置语法错误提示符号.默认'✖'
" let g:spacevim_error_symbol = '+'

" 设置语法警告提示符号.默认'⚠'.
" let g:spacevim_warning_symbol = '!'

" 设置光标形状,0:防止nvim改变光标形状,1:非闪烁模式,2:闪烁模式
" 有可能依赖tmux配置
" let g:spacevim_terminal_cursor_shape = 1

" 设置帮助文档语言.默认为'en'
" let g:spacevim_vim_help_language = 'chinese'

" 设置vim的消息语言,默认'en_US.UTF-8'
" let g:spacevim_language = 'en_CA.utf8'

" SpaceVim配色方案,默认值'gruvbox'
" let g:spacevim_colorscheme = 'gruvbox'

" 设置默认配色方案,默认'desert';g:spacevim_colorscheme设置过，这里再设置就无效
" let g:spacevim_colorscheme_default = 'other_color'

" 启用/禁用简单模式.默认0，该模式只会安装必要插件
" let g:spacevim_simple_mode = 1

" 设置默认文件管理插件，默认'vimfiler'
" let g:spacevim_filemanager = 'vimfiler'

" 设置插件管理,默认'dein'
" let g:spacevim_plugin_manager = 'dein'

" 启用/禁用开机更新插件,默认1
" let g:spacevim_checkinstall = 1

" 启用/禁用SpaceVim的debug模式,默认0
" let g:spacevim_enable_debug = 1

" 设置SpaceVim的debug级别,默认1
" let g:spacevim_debug_level = 1

" 设置SpaceVim的buffer索引图标，值范围0~4,默认0
" let g:spacevim_buffer_index_type = 1


" use space as `<Leader>`
let mapleader = "\<space>"

" By default, language specific plugins are not loaded. This can be changed
" with the following, then the plugins for go development will be loaded.
call SpaceVim#layers#load('shell') 
call SpaceVim#layers#load('tmux') 
" loaded c layers
call SpaceVim#layers#load('lang#c') 
" let g:deoplete#sources#clang#flags = ['-Iwhatever', ...]
let g:deoplete#sources#clang#executable = '/usr/bin/clang'

let g:deoplete#sources#clang#autofill_neomake = 1
"let g:neomake_<filetype>_enabled_make = ['clang']

" loaded ui layer
call SpaceVim#layers#load('ui')

" If there is a particular plugin you don't like, you can define this
" variable to disable them entirely:
let g:spacevim_disabled_plugins=[
            \ ['junegunn/fzf.vim'],
            \ ]

" If you want to add some custom plugins, use these options:
let g:spacevim_custom_plugins = [
            \ ['plasticboy/vim-markdown', {'on_ft' : 'markdown'}],
            \ ['wsdjeg/GitHub.vim'],
            \ ]