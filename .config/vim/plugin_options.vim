"
" solarized theme
"
" let g:solarized_termtrans=1
" let g:solarized_termcolors=256
" let g:solarized_contrast="high"
" let g:solarized_visibility="high"

if (has("termguicolors"))
 set termguicolors
endif

let g:material_theme_style = 'dark'
colorscheme material

"
" Airline
"

" solarized не входит в стандартную поставку, необходимо загрузить набор тем
let g:airline_theme='material'
" использовать пропатченные шрифты
let g:airline_powerline_fonts = 1
" включить управление табами
let g:airline#extensions#tabline#enabled = 1
" всегда показывать tabline
let g:airline#extensions#tabline#tab_min_count = 0
" такое же поведение, как и в sublime: если файл с уникальным именем - показывается только имя, если встречается файл с таким же именем, отображается также и директория
let g:airline#extensions#tabline#formatter = 'unique_tail'
" скрыть буферы
let g:airline#extensions#tabline#show_buffers = 0
" имя файла + расширение :help filename-modifiers
let g:airline#extensions#tabline#fnamemod = ':t'
" убираем раздражающие ненужные красные панели с предупреждениями или ошибками. Предупреждения, как по мне, не нужны, поскольку ругаются даже на trailing-spaces и разные отступы: например табы и пробелы (привет от phpDoc). Для ошибок и так открывается дополнительное окно. Впрочем, вам решать.
let g:airline_section_warning = ''
let g:airline_section_error = ''
" убираем "X" для закрытия вкладки мышью (мышью!?)
let g:airline#extensions#tabline#show_close_button = 0
" убираем разделитель для вкладок
let g:airline#extensions#tabline#left_alt_sep = ''
" отключаем tagbar
let g:airline#extensions#tagbar#enabled = 0
" показывать номер вкладки
let g:airline#extensions#tabline#show_tab_nr = 1
" показывать только номер вкладки
let g:airline#extensions#tabline#tab_nr_type = 1

"
" netrw
"
let g:netrw_home = $XDG_CACHE_HOME.'/vim'
let g:netrw_liststyle=0         " thin (change to 3 for tree)
let g:netrw_banner=0            " no banner
let g:netrw_altv=1              " open files on right
let g:netrw_preview=1           " open previews vertically

"
" ctrl-p
"
let g:ctrlp_by_filename = 1
let g:ctrlp_working_path_mode = 'wr'

"
" tagbar
"

" сортировать в том порядке, в котором тег появляется в коде, а не по имени
let g:tagbar_sort = 0
" замена стандартных стрелочек раскрытия/сворачивания группы тегов
let g:tagbar_iconchars = ['+', '-']
" обеспечиваем переключатель
let g:tagbar_map_close = '<C-m>'
" Убираем переменные из списка
let g:tagbar_type_php = {
	\'ctagstype': 'php',
	\'kinds': [
		\'i:interfaces',
		\'c:classes',
		\'d:constants',
		\'f:functions'
	\]
\}

"
" session
"
"let g:session_autoload = 'yes' " открывать сессию при старте. Опция игнорируется, если мы передаем vim некие файлы
"let g:session_autosave = 'yes' " включить автосохранение
"let g:session_autosave_periodic = 5 " сохранять состояние каждые 5 минут
"let g:session_autosave_silent = 1 " не сообщать ничего при автосохранении
"let g:session_default_to_last = 0 " открывать последнюю рабочую сессию вместо стандартной
"let g:session_directory = $XDG_CACHE_HOME.'/vim/sessions' " директория куда будут сохраняться сессии

"
" vim-workspace
"
nnoremap <leader>t :ToggleWorkspace<CR>
let g:workspace_autosave_always = 1
let g:workspace_session_name = $XDG_CACHE_HOME.'/vim/sessions/Session.vim'
"
" easytags
"
let g:easytags_file = './tags' " записываем теги локально для каждого проекта, вместо ~/.vimtags
let g:easytags_auto_highlight = 0 " отключаем подсветку тегов
let g:easytags_events = ['BufWritePost'] " события (:help autocmd-events), которые слушает easytags
let g:easytags_async = 1 " не блокировать vim во время обновления тег-файла

