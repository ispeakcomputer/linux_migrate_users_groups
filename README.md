# Migrate Linux Users and Groups The Easy Way

## How to use

1. Use **create_backup.sh** script on source machine and move backup files in pwd to destination machine
2. On destination machine while in directory with backup files copy and paste or run **install_from_backup**
3. Use the **create_home_directories.sh** script on destination box to create all the users home folders. I scp the old /home folder over into the new machine usually, but only if that isn't gonna break configuration with the old dot files.

