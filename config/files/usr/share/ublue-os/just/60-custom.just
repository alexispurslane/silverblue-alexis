dotfiles:
    stat ~/dotfiles || git clone git@github.com:alexispurslane/dotfiles.git ~/dotfiles
    stow dotfiles/emacs dotfiles/vim dotfiles/fish dotfiles/git
    dotfiles/nushell
