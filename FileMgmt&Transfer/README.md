## 1. Archiving with `tar`
*The "Tape Archiver" – used to bundle and compress files.*

### Core Commands
* **Create:** `tar -czf backup.tar.gz /path/to/source`
    * `-c`: **C**reate a new archive.
    * `-z`: Filter through **g**zip (compression).
    * `-f`: Define the **f**ilename (must come last before the name).
* **List:** `tar -tzf backup.tar.gz`
    * `-t`: Lis**t** contents without extracting.
* **Extract:** `tar -xzf backup.tar.gz -C /target/dir`
    * `-x`: E**x**tract the files.
    * `-C`: Change to a specific directory before extracting.


## 2. Synchronization with `rsync`
*Efficiently syncing directory trees between systems.*

### Key Syntax
`rsync -avz [SOURCE] [DESTINATION]`
* `-a`: **A**rchive mode (preserves permissions, symlinks, and timestamps).
* `-v`: **V**erbose (shows what is happening).
* `-z`: **C**ompresses data during transfer (saves bandwidth).

> * `/etc` -> Copies the **folder itself** (results in `/dest/etc/...`).
> * `/etc/` -> Copies only the **contents** (results in `/dest/...`).

---

## 3. Secure Transfers: `scp` & `sftp`
*Moving files over the SSH protocol.*

* **SCP (Simple Copy):** (not advised to use because of security breach danger)
    `scp file.tar.gz user@remote:/path/to/destination`
* **SFTP (Interactive):**
    `sftp user@remote` -> Use `put` to upload or `get` to download.
