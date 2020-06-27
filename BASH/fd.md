# Clean up executed containers

[Return Home](../README.md)

fd is a simple and fast alternative to the find command. It does not aim to replace the complete functionality find provides; instead, it provides some sane defaults that help a lot in certain scenarios.

For example, when searching for source-code files in a directory that contains a Git repository, fd automatically excludes hidden files and directories, including the .git directory, as well as ignoring patterns from the .gitignore file. In general, it provides faster searches with more relevant results on the first try.

By default, fd runs a case-insensitive pattern search in the current directory with colored output. The same search using find requires you to provide additional command-line parameters. For example, to search all markdown files (.md or .MD) in the current directory, the find command is this:

``` Bash
$ find . -iname "*.md"
```

Here is the same search with fd:

```Bash
$ fd .md
```

In some cases, fd requires additional options; for example, if you want to include hidden files and directories, you must use the option -H, while this is not required in find.

[fd github](https://github.com/sharkdp/fd/)

Access through `tldr fd` or `man fd` to access via terminal.
