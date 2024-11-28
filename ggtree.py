import os

# Metadata
version = "1.0.4"
author = "Gerald Hasani"
name = "GGTree"
email = "contact@gerald-hasani.com"
github = "https://github.com/Gerald-Ha"

def print_tree(start_path=".", prefix=""):
    """
    Print the directory tree structure starting from `start_path`.

    :param start_path: Root directory to start building the tree.
    :param prefix: Indentation for the current level of the tree.
    """
    entries = sorted(os.listdir(start_path))
    entries_count = len(entries)

    for index, entry in enumerate(entries):
        path = os.path.join(start_path, entry)
        connector = "└── " if index == entries_count - 1 else "├── "
        print(prefix + connector + entry)

        if os.path.isdir(path):
            extension = "    " if index == entries_count - 1 else "│   "
            print_tree(path, prefix + extension)

if __name__ == "__main__":
    print("Directory tree for:", os.getcwd())
    print_tree()
