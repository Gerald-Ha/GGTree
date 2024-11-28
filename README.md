
# GGTree
<br><br>
GGTree is a simple Python program that outputs the directory structure (tree) from the current folder to the console.

## Sample
```
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
<br><br>
<br><br>
## Features
- Lists all files and directories in a clear tree structure.
- Works from the current directory.
- Easy to install and uninstall.
<br><br>
## Prerequisites
- **Python 3** must be installed on your system.
<br><br>
## Installation
1. Download the files `GGTree.py`, `install.sh`, and `uninstall.sh`.
2. Navigate to the directory where these files are located.
3. Ensure the installation script has the correct permissions. If not, run the following command:
   ```bash
   chmod +x install.sh uninstall.sh
   ```
4. Run the installation script:
   ```bash
   sudo ./install.sh
   ```
<br><br>
<br><br>
After installation, you can execute the program using the command `ggtree` from anywhere in the terminal.
<br><br>
### Optional: Use a Virtual Environment
To avoid conflicts with system-wide Python packages, consider running the program inside a virtual environment:
1. Create a virtual environment:
   ```bash
   python3 -m venv ggtree_env
   ```
<br><br>
2. Activate the virtual environment:
   - On Linux/macOS:
     ```bash
     source ggtree_env/bin/activate
     ```
<br><br>
   - On Windows:
     ```bash
     ggtree_env\Scripts\activate
     ```
<br><br>
<br><br>
3. Install any dependencies (if required) within the virtual environment.
<br><br>
## Usage
Simply run the following command in the terminal:
```bash
ggtree
```
<br><br>
<br><br>
The program will display the entire directory structure starting from the current folder.
<br><br>
## Uninstallation
1. Run the uninstallation script:
   ```bash
   sudo ./uninstall.sh
   ```
<br><br>
This will completely remove the program.
<br><br>

<br><br>

# windows User

### Installation on Windows

1. Ensure **Python 3** is installed on your system and added to the PATH environment variable.
2. Download the file `ggtree.py` and place it in a directory of your choice.
3. (Optional) To use GGTree system-wide, add the directory containing `ggtree.py` to your PATH environment variable:
   - Open the Start Menu and search for "Environment Variables".
   - Click on "Edit the system environment variables".
   - Under "System Properties", click "Environment Variables".
   - In the "System Variables" section, find and select the "Path" variable, then click "Edit".
   - Click "New" and add the full path to the directory containing `ggtree.py`. Click "OK" to save.
<br><br>
### Usage on Windows
1. Open the Command Prompt or PowerShell.
2. Navigate to the directory where `ggtree.py` is located, or ensure it is in the PATH for system-wide usage.
3. Run the program using the command:
   ```cmd
   python ggtree.py
   ```
   - If `ggtree.py` is in your PATH, you can directly use:
     ```cmd
     ggtree
     ```
<br><br>
The program will display the directory structure starting from the current folder.
<br><br>
## License
This project is licensed under the **GNU GENERAL PUBLIC LICENSE**. See the `LICENSE` file for more details.

---

Enjoy using GGTree!
