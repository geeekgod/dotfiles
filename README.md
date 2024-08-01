# Dotfiles

This repository contains my personal dotfiles, which are configuration files for various tools and applications. By keeping these dotfiles in a version control system like Git, I can easily synchronize my configurations across different machines and quickly set up a new development environment.

## Installation

To install these dotfiles on your machine, follow these steps:

1. Clone the repository:

  ```bash
  git clone https://github.com/geeekgod/dotfiles.git
  ```

2. Change into the dotfiles directory:

  ```bash
  cd dotfiles
  ```

3. Run the installation script:

  ```bash
  ./install.sh
  ```

  The installation script will create symbolic links from the dotfiles in this repository to their respective locations in your home directory.
  

The dotfiles are managed by [GNU STOW](https://www.gnu.org/software/stow/).