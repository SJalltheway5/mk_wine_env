# mk_wine_env
Script for creating Wine/Proton environments
```
Usage:
  mk_wine_env <Wine binary> <Wine prefix> <_env filename>

Example:
  mk_wine_env /usr/bin/wine ~/.wine ~/wine_env

mk_wine_env with no arguments runs in interactive mode.
```
If no `_env filename` is set, one will be created based on the prefix name.<br><br>
Output will look something like this:
```
$ mk_wine_env /usr/bin/wine ~/.wine ~/wine_env
  Creating Wine environment file...
    File saved to "/home/example/wine_env"
  To enable it, run:
    source "/home/example/wine_env"
```
Alternatively:
```
$ mk_wine_env
  Wine binary: /usr/bin/wine
  Wine prefix: ~/.wine
  Creating Wine environment file...
    File saved to "/home/example/.wine_env"
  To enable it, run:
    source "/home/example/.wine_env"
```
Note the environment file in this case is `.wine_env` instead of `wine_env`, due to the filename being determined by the prefix (`.wine`) rather than being explicitly set.<br><br>
Enabling the Wine environment:
```
$ source /home/example/wine_env
  Wine binary: /usr/bin/wine
               wine 3.0.2
  Wine prefix: /home/example/.wine
```
Any Wine commands will now run within this environment.  Print the current environment by running `wine_env`.  Configuration can now be done via the built-in `winecfg` and/or `winetricks` (must be installed separately).
# mk_wine_run
Script for creating another script to run a Windows application via Wine
```
Usage:
  mk_wine_run <Windows .exe> <Wine _env> <script name>

Example:
  mk_wine_run ~/myapp.exe ~/myapp_env ~/myapp.sh

mk_wine_run with no arguments runs in interactive mode.
```
If no `script name` is set, it will default to `run.sh`.<br><br>
Assuming a `_env` file has already been created, output will look something like this:
```
$ mk_wine_run ~/myapp.exe ~/myapp_env ~/myapp.sh
  Creating script for Wine app...
    Script written to "/home/example/myapp.sh"
```
Alternatively:
```
$ mk_wine_run
  .exe file: ~/myapp.exe
  Wine _env: ~/myapp_env
  Creating script for Wine app...
    Script written to "/home/example/run.sh"
```
Note the script in this case is `run.sh`, due to no script name being explicitly given.  This script is a template and is intended to be edited before being run (see `example_run.sh`).
### TODO:
  - [ ]Fix "wine6464" bug when running `wine %command%` in a 64-bit prefix (`wine64 %command%` seems fine)<br>
  - [ ]More testing