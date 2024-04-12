dotfiles:
    stat ~/dotfiles || (git clone git@github.com:alexispurslane/dotfiles.git
    ~/dotfiles && cd dotfiles && stow emacs vim git fish nushell)
