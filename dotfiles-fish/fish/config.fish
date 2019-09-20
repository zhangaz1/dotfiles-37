## path {{{1
set -g fish_user_paths "/usr/local/opt/ncurses/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/curl/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/coreutils/libexec/gnubin/" $fish_user_paths
## }}}1


## fisher-z {{{1
set -U FZF_FIND_FILE_COMMAND "fd --type f . \$dir"
set -x FZF_REVERSE_ISEARCH_OPTS '--preview-window=up:3 --inline-info --height 80%'
## }}}1


## fisher-fzf {{{1
set -U Z_CMD "z"
## }}}1


## fisher-spacefish-prompt {{{1
set -U SPACEFISH_USER_SHOW false
set -U SPACEFISH_NODE_SHOW false
set -U SPACEFISH_JULIA_SHOW false
set -U SPACEFISH_RUBY_SHOW false
set -U SPACEFISH_HASKELL_SHOW false
set -U SPACEFISH_CONDA_SHOW false
set -U SPACEFISH_PHP_SHOW false
set -U SPACEFISH_RUST_SHOW false
set -U SPACEFISH_DOTNET_SHOW false
set -U SPACEFISH_PACKAGE_SHOW false

set -U SPACEFISH_KUBECONTEXT_SHOW false
set -U SPACEFISH_KUBECONTEXT_NAMESPACE_SHOW false

set -U SPACEFISH_BATTERY_THRESHOLD 100

set -U SPACEFISH_PROMPT_SEPARATE_LINE false
## }}}1
