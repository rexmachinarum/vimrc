"TeX Specific Settings
augroup TEX
	autocmd Filetype tex set colorcolumn:80
augroup END

"Python Specific Settings
augroup PYTHON
	autocmd Filetype python nnoremap <leader>r :!python %<return>
augroup END

"Txt/Markdown Specific Settings
augroup TEXT
	autocmd Filetype markdown  set colorcolumn:80
	autocmd Filetype text      set colorcolumn:80
augroup END

augroup CLISP
	autocmd Filetype lisp set nolisp shiftwidth:2 tabstop:2
	autocmd Filetype lisp nnoremap <Leader>r :!sbcl --script %<return>
augroup END

augroup BASH
	autocmd Filetype sh nnoremap <leader>r :!source %<return>
augroup END

augroup C
	autocmd Filetype c set colorcolumn:0
augroup END
