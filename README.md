# My NeoVim config

Before install fork this repo on `~/.config/nvim`

### Install NeoVim on Ubuntu

Neovim has been added to a "Personal Package Archive" (PPA). This allows you to install it with `apt-get`. Follow the links to the PPAs to see which versions of Ubuntu are currently available via the PPA. Choose **stable** or **unstable**:

- [https://launchpad.net/~neovim-ppa/+archive/ubuntu/**stable**](https://launchpad.net/~neovim-ppa/+archive/ubuntu/stable) (Xenial 16.04 or newer only).
- [https://launchpad.net/~neovim-ppa/+archive/ubuntu/**unstable**](https://launchpad.net/~neovim-ppa/+archive/ubuntu/unstable)

To be able to use **add-apt-repository** you may need to install software-properties-common:

    sudo apt-get install software-properties-common

Run the following commands:

    sudo add-apt-repository ppa:neovim-ppa/stable
    sudo apt-get update
    sudo apt-get install neovim

Prerequisites for the Python modules:

    sudo apt-get install python-dev python-pip python3-dev python3-pip

### Install Plug 
```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Then open init.vim file using nvim command and type :PlugInstall to install dependencies
