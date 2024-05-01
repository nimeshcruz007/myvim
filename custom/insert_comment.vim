augroup visual_commenting
    autocmd!
    autocmd FileType c,cpp,java,javascript  let b:comment_symbol = '//'
    autocmd FileType vim              let b:comment_symbol = '"'
    autocmd FileType sh,vim,python    let b:comment_symbol = '#'
    autocmd FileType tex              let b:comment_symbol = '%'
    autocmd BufEnter * silent! vnoremap <silent> <C-_> :<C-u>keepp '<,'>s@^@\=b:comment_symbol<CR>
    autocmd BufEnter * silent! exec 'vnoremap <silent> <S-C-?> :<C-u>keepp ''<,''>s@^' . b:comment_symbol . '@<CR>'
augroup END

