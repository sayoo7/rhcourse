# System Performance Tuning

## 1. Adjust Tuning Profiles (`tuned`)
The `tuned` service dynamically optimizes system performance using pre-defined profiles.

### Key Commands:
* `systemctl status tuned` - Check if the tuned daemon is running.
* `tuned-adm active` - Display the currently active tuning profile.
* `tuned-adm list` - List all available tuning profiles on the system.
* `tuned-adm recommend` - Show the recommended tuning profile for your specific machine.
* `tuned-adm profile <profile_name>` - Apply a specific profile (e.g., `tuned-adm profile virtual-guest`).
* `sudo tuned-adm profile_info` - information about current profile
* `tuned-adm off` - Disable all tuning.
Configuration files in /usr/lib/tuned/<profile_name>/tuned.conf
dirty_ratio -
swappiness - 

## 2. Influence Process Scheduling (`nice` & `renice`)
Manage CPU time by adjusting process priority. Niceness values range from `-20` (highest priority) to `19` (lowest priority). Default is `0`.

### Key Commands:
* `nice -n <value> <command>` - Start a new process with a specific niceness value.
  * *Example:* `nice -n 15 tar -czf archive.tar.gz /var/log` (Starts `tar` with lower priority).
* `renice -n <value> -p <PID>` - Change the niceness of an already running process.
  * *Example:* `renice -n -5 -p 4321` (Increases priority of process 4321; requires root).
* `ps axo pid,comm,nice --sort=-nice` - List running processes and their nice values.
* `top` - Interactive process viewer (check the `NI` column for nice values).
