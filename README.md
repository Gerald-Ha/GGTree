
# GGTree

**GGTree** is a simple Python program that displays the directory structure (a tree) starting from the current directory in your console.

## Example

```bash
[14:22:05] User: /python/tree$ ggtree
Directory tree for: /python/tree
├── README.md
├── README.md~
├── TestFolder1
│   └── test.txt
├── ggtree.py
├── install.sh
└── uninstall.sh
[14:22:07] User: /python/tree$
```

## Features

- Provides a clear tree visualization of all files and subdirectories.  
- Runs directly from the current directory.  
- Easy to install and uninstall.

## Prerequisites

- **Python 3** must be installed on your system.

---

## Installation (Linux/macOS)

1. Download the files `ggtree.py`, `install.sh`, and `uninstall.sh`.  
2. Navigate to the directory where these files are located.  
3. Ensure the scripts have the correct permissions:
   ```bash
   chmod +x install.sh uninstall.sh
   ```
4. Run the installation script:
   ```bash
   sudo ./install.sh
   ```
   > **Note**: Using `sudo` may be required to place files in global directories and possibly adjust the `PATH` environment variable.

After the installation, you can run `ggtree` from any directory in a new terminal window.

---

## Installation (Windows)

1. Make sure **Python 3** is installed and added to your system `PATH`.  
2. Download the files `ggtree.py`, `install.bat`, and `uninstall.bat`.  
3. Double-click (or run in Command Prompt) `install.bat`:
   - This script copies `ggtree.py` and creates a wrapper batch file `ggtree.bat` in  
     `%USERPROFILE%\AppData\Local\Programs\ggtree`.
   - It then updates your `PATH` environment variable so you can run `ggtree` from anywhere.
4. Open a **new** Command Prompt or PowerShell window so that the updated `PATH` variable is recognized.

> **Note**: If you prefer a custom location, adjust the script and manually configure your `PATH` environment variable accordingly.

---

## Usage

### Linux/macOS

Simply open a terminal and run:
```bash
ggtree
```
The program will display the directory structure starting from your current folder.

### Windows

- **If you used `install.bat`** and have opened a new terminal window, you can directly run:
  ```cmd
  ggtree
  ```
- **If you did not install or it’s not in the PATH**:
  ```cmd
  python ggtree.py
  ```
  (In this case, you must be in the same directory as `ggtree.py`, or specify the full path.)

---

## Uninstallation

### Linux/macOS

1. Run the `uninstall.sh` script:
   ```bash
   sudo ./uninstall.sh
   ```
2. This removes the program and any related files (including symlinks/entries in your system paths).

### Windows

1. Double-click (or run) `uninstall.bat`:
   - This script deletes `ggtree.py` and the `ggtree.bat` file from  
     `%USERPROFILE%\AppData\Local\Programs\ggtree`.
   - It then tries to remove that entire directory.
2. **Note**: This does **not** automatically remove the entry from the `PATH` environment variable.  
   If you want a fully cleaned environment, you must manually remove the corresponding entry from your `PATH` or modify the script to do so.

---

## License

This project is licensed under the **GNU GENERAL PUBLIC LICENSE**. See the `LICENSE` file for more details.

---

Enjoy using **GGTree**!
