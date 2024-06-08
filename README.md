# Backup Creation Script

A simple bash script to create a compressed backup of the entire filesystem.

## Overview

This script creates a compressed backup (`.tar.gz`) of the entire filesystem and saves it to a specified directory. The backup file is named with the current date.

## Usage

1. **Download the Script:**

    Save the script to a file, e.g., `create-backup.sh`.

2. **Make the Script Executable:**

    ```bash
    chmod +x create-backup.sh
    ```

3. **Run the Script:**

    ```bash
    ./create-backup.sh
    ```

4. **Enter the Backup Directory:**

    When prompted, enter the directory where you want the backup file to be saved.

    ```
    Enter the name of the backup directory: /path/to/backup/directory
    ```

### Example Output

```
Enter the name of the backup directory: /path/to/backup/directory
The backup has been created.
```

## Script Details

### Function `create_backup`

This function creates a compressed backup of the entire filesystem.

- **Parameters:**
  - `$1`: The directory where the backup file will be saved.

- **Example:**

    ```bash
    create_backup /path/to/backup/directory
    ```

### Script Steps

1. **Prompt for the Backup Directory:**

    The script prompts the user to enter the directory where the backup file will be saved.

    ```bash
    read -p "Enter the name of the backup directory: " backup_dir
    ```

2. **Create the Backup:**

    The script calls the `create_backup` function, passing the specified directory as an argument.

    ```bash
    create_backup "$backup_dir"
    ```

3. **Display Confirmation:**

    The script prints a message indicating that the backup has been created.

    ```bash
    echo "The backup has been created."
    ```

## Dependencies

- `tar`: Ensure the `tar` utility is installed and available on your system.

    - On Debian/Ubuntu:

        ```bash
        sudo apt-get install tar
        ```

    - On CentOS/RHEL:

        ```bash
        sudo yum install tar
        ```

    - On macOS:

        ```bash
        brew install gnu-tar
        ```
