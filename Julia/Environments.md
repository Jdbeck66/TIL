# Create and Use and Environment

[Return Home](../README.md)

## Activate Project Environment

Navigate to project folder, open Julia REPL and ] to pkg

```julia

pkg> activate .

```

## Add Packages

```julia 

Pkg.add("DataFrames", preserve=PRESERVE_DIRECT)

```

## Start Julia using Environment

```julia

> julia --projects=.

```


