# 2G-Labs Dotfiles

Welcome to the 2G-Labs Dotfiles repository! This repository contains curated system configurations, also known as "dotfiles," used by members of the 2G-Labs organization. These configurations help standardize development environments, optimize workflows, and maintain consistency across various systems.

## Overview

### What are Dotfiles?

Dotfiles are configuration files for Unix-like systems (e.g., Linux, macOS) that control the behavior and settings of software and the command-line interface. They are often hidden files starting with a dot (e.g., `.bashrc`, `.vimrc`).

### Purpose

The purpose of this repository is to:

- Centralize and organize system configurations used by 2G-Labs members.
- Streamline setup and synchronization of configurations across multiple machines.
- Version control and track changes made to configurations over time.

## Usage

### Prerequisites

To use these dotfiles, ensure the following prerequisites are met:

- Access to a Unix-like operating system.
- Familiarity with command-line operations.
- Backup existing configurations if needed.

### Setup

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/2G-Labs/dotfiles.git ~/.dotfiles
    ```

2. Navigate to the cloned repository:

    ```bash
    cd ~/.dotfiles
    ```

3. Review the available configurations in the repository.

4. Symlink the desired configuration files to their respective locations:

    Example:
    ```bash
    ln -s ~/.dotfiles/.bashrc ~/.bashrc
    ```

    Note: Replace `.bashrc` with the desired configuration file and adjust the symlink paths accordingly.

### Customization

Feel free to customize the configurations according to your preferences. Edit the files directly in this repository or copy them to your home directory for modification.

## Contributing

Contributions and improvements to these dotfiles are welcome! If you have suggestions, enhancements, or new configurations to add, feel free to open an issue or create a pull request.

## Acknowledgments

We extend our gratitude to the open-source community and various online resources for inspiration and guidance in managing dotfiles.

## License

This repository is licensed under the [MIT License](LICENSE).
