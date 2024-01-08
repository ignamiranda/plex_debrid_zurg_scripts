# Plex Debrid Zurg Windows Guide

These are the scripts I use to start my plex debrid set up with windows. It assumes you have zurg.exe and rclone.exe in `C:/zurg/` and plex_debrid in `C:/plex_debrid/`.

These scripts go in `%appdata%/Microsoft/Windows/Start Menu/Programs/Startup/`

## Zurg Installation

1. Download [zurg.exe](https://github.com/debridmediamanager/zurg-testing/tree/main/releases/) and [rclone.exe](https://rclone.org/downloads/) and put them in `C:/zurg/`.
2. Save [config.yml](https://raw.githubusercontent.com/debridmediamanager/zurg-testing/main/config.yml) and [rclone.conf](https://raw.githubusercontent.com/debridmediamanager/zurg-testing/main/rclone.conf) to `C:/zurg/`.
3. Edit config.yml and add your token.
4. Save [zurg.vbs](https://raw.githubusercontent.com/ignamiranda/plex_debrid_zurg_scripts/main/zurg.vbs) and [rclone_zurg.vbs](https://raw.githubusercontent.com/ignamiranda/plex_debrid_zurg_scripts/main/rclone_zurg.vbs) from this repo and put them in `%appdata%/Microsoft/Windows/Start Menu/Programs/Startup/`.
5. Restart your computer or double click the vbs files to run them manually. They execute silently. You'll know they're running when you see the new mounted `Z:` drive as well as zurg.exe and rclone.exe running in Task Manager.
6. You can now configure Plex to scan the folders in this drive. Add media using [debridmediamanager.com](https://debridmediamanager.com/).

## Plex Debrid Installation

This is for convenience. You can run a fully functional set up with just zurg and DMM in the steps above. Even with plex_debrid set up, I use DMM a lot.

1. [Download plex debrid](https://codeload.github.com/itsToggle/plex_debrid/zip/refs/heads/main) and extract it to `C:/plex_debrid/`.
2. Run `cd C:/plex_debrid/` in cmd. Run `pip install -r requirements.txt` and then `python main.py`.
3. Continue the [standard setup guide](https://github.com/itsToggle/plex_debrid#3-page_facing_up-setup-plex_debrid) to set up your "content service". Close the python cmd window when you're done.
4. Download and copy **plex_debrid.vbs** from this repo and put it in `%appdata%/Microsoft/Windows/Start Menu/Programs/Startup/`.
5. Before running **plex_debrid.vbs**, add a movie and a show using debridmeadiamanager.com and make sure Plex is already set up to scan the zurg folders.
   * Plex_debrid will refuse to work if your media libraries are empty. This is to protect the user from accidentally repeatedly re-downloading your watchlist if plex_debrid just can't see your library.
6. Double click the vbs file to run it or restart your computer. Again, it executes silently. You will only see that python is running in Task Manager.
