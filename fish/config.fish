if not set -q XDG_RUNTIME_DIR
    set p /run/user/(id -u)

    sudo mkdir $p
    sudo chmod 700 $p
    sudo chown $USER:users $p

    set -gx XDG_RUNTIME_DIR $p
end

source ~/.config/fish/themes/fish_tokyonight_storm.fish
zoxide init fish | source
# keychain --eval --quiet --agents ssh martin@lesiteimmo.com id_rsa | source

alias doco docker-compose

set -gx QT_QPA_PLATFORM wayland-egl
set -gx MOZ_ENABLE_WAYLAND 1
set -gx EDITOR nvim

set -gx XCURSOR_PATH $XCURSOR_PATH ~/.local/share/icons
set -gx XCURSOR_THEME Bibata-Modern-Classic

set -gx FZF_LEGACY_KEYBINDINGS 0

set -gx PATH $HOME/.local/bin/zls/zig-out/bin $HOME/.local/bin/lua-language-server/bin/Linux $PATH
