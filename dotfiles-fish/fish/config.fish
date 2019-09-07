## tmux {{{1
set -g fish_user_paths "/usr/local/opt/ncurses/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/curl/bin" $fish_user_paths
## }}}1


## fisher-pure-prompt {{{1
set -U pure_threshold_command_duration 2
set -U pure_begin_prompt_with_current_directory true
## }}}1


## fisher-z {{{1
set -U FZF_FIND_FILE_COMMAND "fd --type f . \$dir"
set -x FZF_REVERSE_ISEARCH_OPTS '--preview-window=up:3 --inline-info --height 80%'
## }}}1


## fisher-fzf {{{1
set -U Z_CMD "z"
## }}}1
