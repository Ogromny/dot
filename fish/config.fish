source ~/.config/fish/themes/fish_tokyonight_storm.fish
zoxide init fish | source
keychain --eval --quiet --agents ssh martin@lesiteimmo.com id_rsa | source

alias doco docker-compose

set -gx QT_QPA_PLATFORM wayland-egl
set -gx MOZ_ENABLE_WAYLAND 1
set -gx EDITOR nvim

set -gx FZF_LEGACY_KEYBINDINGS 0

set -gx PATH (yarn global bin) $PATH
