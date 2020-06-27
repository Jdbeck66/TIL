# ncdu command: disk usage

[Return Home](../README.md)

The NCurses Disk Usage (ncdu) tool provides similar results to du but in a curses-based, interactive interface that focuses on the directories that consume most of your disk space.

ncdu spends some time analyzing the disk, then displays the results sorted by your most used directories or files, like this:

``` Bash
ncdu 1.14.2 ~ Use the arrow keys to navigate, press ? for help
--- /home/rgerardi ------------------------------------------------------------
   96.7 GiB [##########] /libvirt
   33.9 GiB [###       ] /.crc
    7.0 GiB [          ] /Projects
.   4.7 GiB [          ] /Downloads
.   3.9 GiB [          ] /.local
    2.5 GiB [          ] /.minishift
    2.4 GiB [          ] /.vagrant.d
.   1.9 GiB [          ] /.config
.   1.8 GiB [          ] /.cache
    1.7 GiB [          ] /Videos
    1.1 GiB [          ] /go
  692.6 MiB [          ] /Documents
. 591.5 MiB [          ] /tmp
  139.2 MiB [          ] /.var
  104.4 MiB [          ] /.oh-my-zsh
   82.0 MiB [          ] /scripts
   55.8 MiB [          ] /.mozilla
   54.6 MiB [          ] /.kube
   41.8 MiB [          ] /.vim
   31.5 MiB [          ] /.ansible
   31.3 MiB [          ] /.gem
   26.5 MiB [          ] /.VIM_UNDO_FILES
   15.3 MiB [          ] /Personal
    2.6 MiB [          ]  .ansible_module_generated
    1.4 MiB [          ] /backgrounds
  944.0 KiB [          ] /Pictures
  644.0 KiB [          ]  .zsh_history
  536.0 KiB [          ] /.ansible_async
 Total disk usage: 159.4 GiB  Apparent size: 280.8 GiB  Items: 561540
```

Navigate to each entry by using the arrow keys. If you press Enter on a directory entry, ncdu displays the contents of that directory:

``` Bash
--- /home/rgerardi/libvirt ----------------------------------------------------
                         /..
   91.3 GiB [##########] /images
    5.3 GiB [          ] /media
```

You can use that to drill down into the directories and find which files are consuming the most disk space. Return to the previous directory by using the Left arrow key. By default, you can delete files with ncdu by pressing the d key, and it asks for confirmation before deleting a file. If you want to disable this behavior to prevent accidents, use the -r option for read-only access: ncdu -r.

[ncdu website](https://dev.yorhel.nl/ncdu)