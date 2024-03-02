# nvim-config

Personal Neovim configuration.

## Installation

### Neovim

```bash
wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
echo "export PATH=\$PATH:$(realpath nvim-linux64/bin)" >> ~/.bashrc
source ~/.bashrc
```

### Config

(_Optional_) Dependencies:
- npm (used by Mason at times, e.g. to install `pyright`)
- stylua
- black
- prettier
- ripgrep (install using the `*unknown-linux-musl.tar.gz` tarballs available on GitHub)

Install the Packer package manager alongside this config
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
git clone git@github.com:kpidge/nvim-config.git ~/.config/nvim
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

# Execute a second time, as the first execution raises errors at the moment
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```

To update plugins:
```bash
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```
