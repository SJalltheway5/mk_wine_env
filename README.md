# mk_wine_env
Script for creating Wine/Proton environments
```
Usage:
  mk_wine_env <Wine binary> <Wine prefix> <_env filename>

Example:
  mk_wine_env /usr/bin/wine ~/.wine ~/example_env

mk_wine_env with no arguments runs in interactive mode.
```
If no `_env filename` is set, one will be created based on the prefix name.<br><br>
Output will look something like this:
```
$ mk_wine_env /usr/bin/wine ~/.wine ~/example_env
  Creating Wine environment file...
    File saved to "/home/example/example_env"

  To enable it, run:
    source "/home/example/example_env"
  
  Print the active wine environment with:
    wine_env
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
  
  Print the active wine environment with:
    wine_env
```
Note the environment file in this case is `.wine_env` instead of `example_env`, due to the filename being determined by the prefix (`~/.wine`) rather than being explicitly set.<br><br>
Enabling the Wine environment:
```
$ source /home/example/example_env
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
  mk_wine_run ~/example.exe ~/example_env ~/example.sh

mk_wine_run with no arguments runs in interactive mode.
```
If no `script name` is set, it will default to `run.sh`.<br><br>
Assuming a(n) `_env` file has already been created, output will look something like this:
```
$ mk_wine_run ~/example.exe ~/example_env ~/example.sh
  Creating script for Wine application...
    Script written to "/home/example/example.sh"

  Edit this script before running.
```
Alternatively:
```
$ mk_wine_run
  .exe file: ~/example.exe
  Wine _env: ~/example_env
  Creating script for Wine application...
    Script written to "/home/example/run.sh"

  Edit this script before running.
```
Note the script in this case is `run.sh`, due to no script name being explicitly given.  This script is a template and is intended to be edited before being run (see `example_run.sh`).
