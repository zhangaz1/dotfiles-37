"" vim: ft=vim


"" Do not follow symbolic links.
let g:ctrlp_follow_symlinks = 0

"" Ignore files, that are defined in `.gitignore`.
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"" Open new-file vertically, by default.
let g:ctrlp_open_new_file = 'v'
