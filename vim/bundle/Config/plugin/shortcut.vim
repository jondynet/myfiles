" 使用 gP 来粘贴最近一次 yank 的文字
nmap gp "0p
nmap gP "0P
autocmd BufRead *.less map <F1> :make<cr>
autocmd BufRead *.css map <F1> :make<cr>
autocmd BufRead *.py map <F1> :!python %<cr>
autocmd BufRead *.pyw map <F1> :!python %<cr>
