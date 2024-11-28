
# GGTree

GGTree is a simple Python program that outputs the directory structure (tree) from the current folder to the console.

## Sample
[14:22:05] User:~/python/tree$ ggtree
Directory tree for: /python/tree
├── README.md
├── README.md~
├── TestFolder1
│   └── test.txt
├── ggtree.py
├── install.sh
└── uninstall.sh
[14:22:07] User:~/python/tree$ 


## Features
- Lists all files and directories in a clear tree structure.
- Works from the current directory.
- Easy to install and uninstall.

## Prerequisites
- **Python 3** must be installed on your system.

## Installation
1. Download the files `GGTree.py`, `install.sh`, and `uninstall.sh`.
2. Navigate to the directory where these files are located.
3. Run the installation script:
   ```bash
   sudo ./install.sh
   ```

After installation, you can execute the program using the command `ggtree` from anywhere in the terminal.

## Usage
Simply run the following command in the terminal:
```bash
ggtree
```

The program will display the entire directory structure starting from the current folder.

## Uninstallation
1. Run the uninstallation script:
   ```bash
   sudo ./uninstall.sh
   ```

This will completely remove the program.

## License
This project is licensed under the **GNU GENERAL PUBLIC LICENSE**. See the `LICENSE` file for more details.

---

Enjoy using GGTree!
