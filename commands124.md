# RH124

This document contains essential commands for the RH124

## 1. Accessing the Command Line & Help
- `man <command>`: Display the manual page for a command.
- `pinfo <command>`: Display the info page for a command.
- `history`: List previously executed commands.
- `alias <name>='<command>'`: Create a shortcut for a command.
- `unalias <name>`: Remove a shortcut.

## 2. File and Directory Management
- `pwd`: Print the current working directory.
- `ls -lha`: List files with details, hidden files, and human-readable sizes.
- `cd <directory>`: Change the current directory.
- `mkdir -p <path>`: Create a directory and any missing parent directories.
- `cp -r <src> <dest>`: Copy files or directories recursively.
- `mv <src> <dest>`: Move or rename files/directories.
- `rm -rf <path>`: Remove files or directories forcefully and recursively.
- `touch <filename>`: Create an empty file or update timestamps.

## 3. Text Processing
- `cat <file>`: View the entire content of a file.
- `less <file>`: View file content with navigation (interactive).
- `head -n <number> <file>`: View the first N lines.
- `tail -f <file>`: View the last lines and follow updates (real-time).
- `grep <pattern> <file>`: Search for text within a file.
- `vim <file>`: Standard text editor.
  - `i`: Insert mode.
  - `Esc`: Command mode.
  - `:wq`: Save and quit.
  - `:q!`: Quit without saving.
  - `u`: Undo last change.
  - `gg`: Jump to the top of the file.
  - `G`: Jump to the bottom of the file.
  - `10G`: Jump to line 10.
  - `0`: Jump to the beginning of the line.
  - `$`: Jump to the end of the line.
  - `V`: Visual line mode (select entire lines).
  - `y`: Yank (copy) selected text.
  - `yy`: Yank (copy) the current line.
  - `p`: Paste after the cursor.
  - `dd`: Delete (cut) the current line.

## 4. User and Group Management
- `id`: Display current user identity (UID, GID).
- `useradd <username>`: Create a new user.
- `usermod -aG <group> <user>`: Add a user to a supplementary group.
- `passwd <username>`: Change a user's password.
- `userdel -r <username>`: Delete a user and their home directory.
- `groupadd <groupname>`: Create a new group.

## 5. Permissions and Ownership
- `chmod <mode> <file>`: Change file permissions (e.g., `chmod 755 file`, read - 4, write - 2, execute - 1, owner - all, group r+x, others r+x)
- `chown <user>:<group> <file>`: Change owner and group ownership.
- `chgrp <group> <file>`: Change group ownership.

## 6. Process and Service Management
- `ps aux`: Display all running processes.
- `top`: Interactive real-time process monitoring.
- `kill -9 <PID>`: Forcefully terminate a process.
- `systemctl start <service>`: Start a service.
- `systemctl stop <service>`: Stop a service.
- `systemctl enable --now <service>`: Enable service on boot and start it immediately.
- `systemctl status <service>`: Check the current state of a service.

## 7. Networking and SSH
- `ip addr`: Show IP addresses and network interfaces.
- `nmcli device status`: Check status of network devices.
- `nmcli connection show`: List network connections.
- `ssh <user>@<host>`: Securely log into a remote system.
- `scp <file> <user>@<host>:<path>`: Securely copy files between hosts.

## 8. Software Management (DNF)
- `dnf install <package>`: Install a package.
- `dnf remove <package>`: Remove a package.
- `dnf search <keyword>`: Search for packages.
- `dnf update`: Update all installed packages.
- `dnf list installed`: List all software on the system.

## 9. Log Analysis (journalctl)
* `journalctl`: View all system logs collected by systemd.
* `journalctl -u sshd`: View logs specifically for the SSH service.
* `journalctl -f`: Follow new log entries in real-time.
* `journalctl -n 50`: Show only the last 50 log entries.
* `journalctl -p err`: Filter logs to show only errors and critical issues.

## 10. Archiving and Compression (tar)
* `tar -czvf archive.tar.gz /path/to/dir`: Create (`c`) a gzip-compressed (`z`) archive, verbosely (`v`), to a file (`f`).
* `tar -xzvf archive.tar.gz`: Extract (`x`) the contents of a compressed archive.
* `tar -tf archive.tar.gz`: List (`t`) the contents of an archive without extracting it.
