dotfiles:
    stat ~/dotfiles || (git clone git@github.com:alexispurslane/dotfiles.git
    ~/dotfiles && cd dotfiles && stow emacs vim git fish nushell)
brew:
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
