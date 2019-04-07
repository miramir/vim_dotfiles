syntax on 						" Включаем подсветку синтаксиса

set shortmess+=tToOI            " убираем заставку при старте
set ruler                       " постоянно показывать позицию курсора
set nobackup                    " не создавать файлы с резервной копией (filename.txt~)"
set winminheight=0 				" Минимальная высота окна
set winminwidth=0 				" Минимальная ширина окна
set title 						" показывать имя буфера в заголовке терминала
set lazyredraw 					" перерисовывать буфер менее плавно
set autoread 					" перечитывать изменённые файлы автоматически
set number 			   		    " показывать номера строк
set relativenumber
set showmatch 		   		 	" показывать первую парную скобку после ввода второй ...
set matchtime=1 	   		 	" ... чуть меньше времени
set matchpairs+=<:>    		 	" показывать совпадающие скобки для HTML-тегов
set shiftround 		   		 	" удалять лишние пробелы при отступе
set report=0 		   		 	" показывать все изменения буфера
set nostartofline 	   		 	" не менять позицию курсора при прыжках по буферу
set scrolloff=3 	   		 	" расстояние до края при вертикальной прокрутке
set scrolljump=-10 	   		 	" размер прыжка при вертикальной прокрутке
set sidescrolloff=3    		 	" расстояния до края при горизонтальной прокрутке
set sidescroll=10 	   		 	" размер прыжка при горизонтальной прокрутке
set splitbelow 		   		 	" разбивать окно горизонтально снизу
set splitright 		   		 	" разбивать окно вертикально справа
set noequalalways 	   		 	" не выравнивать размеры окон при закрытии
set winheight=9999 	   		 	" всегда делать активное окно максимального размера
set nojoinspaces 	   		 	" не вставлять лишних пробелов при объединении строк
set pastetoggle=<F12>  		 	" переключение режима отступов при вставке
set wildmenu 		   		 	" использовать wildmenu ...
set wildcharm=<TAB>    		 	" ... с авто-дополнением
set wildmode=list:longest,full 	" автодополнение командной строки в стиле zsh
set showcmd 		   		 	" Включаем отображение выполняемой в данный момент команды в правом нижнем углу экрана.
set nohlsearch 		   		 	" Выключаем подсветку выражения, которое ищется в тексте
set incsearch 		   		 	" При поиске перескакивать на найденный текст в процессе набора строки
set ignorecase 		   		 	" Игнорировать регистр букв при поиске
set laststatus=2 	   		 	" Всегда отображать статусную строку для каждого окна
set shiftwidth=4 	   		 	" Размер сдвига при нажатии на клавиши << и >>
set tabstop=4 		   		 	" Размер табуляции
set smartindent 	   		 	" Копирует отступ от предыдущей строки
set autoindent
set virtualedit=block  		 	" отмечать блок независимо от того есть в нём символ или нет
set nowrap 			   		 	" Включаем перенос строк
set linebreak 		   		 	" Перенос строк по словам, а не по буквам
set mouse=a 		   		 	" Включаем мышку даже в текстовом режиме.
set visualbell 		   		 	" Включает виртуальный звонок (моргает, а не бибикает при ошибках)
set whichwrap=b,s,<,>,[,],l,h 	" Перемещать курсор на следующую строку при нажатии на клавиши вправо-влево и пр.
set foldmethod=syntax 			" Метод фолдинга - на основе синтаксиса
set foldcolumn=3
set foldlevel=999
set textwidth=0 				" Убираем автоматическое разбиение строк на строки заданной длинны
set formatoptions-=tc 			" отключить автоперенос строк
set clipboard=unnamed 			" связь безымянного буфера с буфером иксов
set cursorline
set noshowmode 					" не показывать режим, в коммандной строк

set complete="" " Слова откуда будем завершать
set complete+=. " Из текущего буфера
set complete+=k " Из словаря
set complete+=b " Из других открытых буферов
set complete+=t " из тегов
set completeopt-=preview
set completeopt+=longest
set mps-=[:]
set path=.,,**

" Поддержка русского языка 
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

"detect specific actions for specific filetypes
filetype on
filetype indent on
filetype plugin on


