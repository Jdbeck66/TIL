# history command

[Return Home](../README.md)

To view a history of your Bash session, use the built-in command history:

``` Bash
$ echo "foo"
foo
$ echo "bar"
bar
$ history
  1  echo "foo"
  2  echo "bar"
  3  history
```

The history command isn't an executable file on your filesystem, like most commands, but a function of Bash. You can verify this by using the type command:

```Bash
$ type history
history is a shell builtin
```

## History control
The upper limit of lines in your shell history is defined by the HISTSIZE variable. You can set this variable in your .bashrc file. The following sets your history to 3,000 lines, after which the oldest line is removed to make room for the newest command, placed at the bottom of the list:

```Bash
export HISTSIZE=3000
```

There are other history-related variables, too. The HISTCONTROL variable controls what history is stored. You can force Bash to exclude commands starting with empty space by placing this in your .bashrc file:

```Bash
export HISTCONTROL=$HISTCONTROL:ignorespace
```

Now, if you type a command starting with a space, that command won't get recorded in history:

```Bash
$ echo "hello"
$     mysql -u bogus -h badpassword123 mydatabase
$ echo "world"
$ history
  1  echo "hello"
  2  echo "world"
  3  history
```

You can avoid duplicate entries, too:

```Bash
export HISTCONTROL=$HISTCONTROL:ignoredups
```

Now, if you type two commands, one after another, only one appears in history:

```Bash
$ ls
$ ls
$ ls
$ history
  1  ls
  2  history
```

If you like both of these ignores, you can just use ignoreboth:

```Bash
export HISTCONTROL=$HISTCONTROL:ignoreboth
```

## Remove a command from history
Sometimes you make a mistake and type something sensitive into your shell, or maybe you just want to clean up your history so that it more accurately represents the steps you took to get something working correctly. If you want to delete a command from your history in Bash, use the -d option with the line number of the item you want to remove:

```Bash
$ echo "foo"
foo
$ echo "bar"
bar
$ history | tail
  535  echo "foo"
  536  echo "bar"
  537  history | tail
$ history -d 536
$ history | tail
  535  echo "foo"
  536  history | tail
  537  history -d 536
  538  history | tail
```

To stop adding history entries, you can place a space before the command, as long as you have ignorespace in your HISTCONTROL environment variable:

```Bash
$  history | tail
  535  echo "foo"
  536  echo "bar"
$  history -d 536
$  history | tail
  535  echo "foo"
```

You can clear your entire session history with the -c option:

```Bash
$ history -c
```

Manipulating history is usually less dangerous than it sounds, especially when you're curating it with a purpose in mind. For instance, if you're documenting a complex problem, it's often best to use your session history to record your commands because, by slotting them into your history, you're running them and thereby testing the process. Very often, documenting without doing leads to overlooking small steps or writing minor details wrong.
