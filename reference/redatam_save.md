# Save dictionary

Save a REDATAM database. This function can be used to save a dictionary.

## Usage

``` r
redatam_save(dic, name = "")
```

## Arguments

- dic:

  Dictionary identifier (returned by redatam_open())

- name:

  Dictionary file name

## Value

No return value.

## Author

Jaime Salvador

## Examples

``` r
if (FALSE) { # \dontrun{
dic<-redatam_open("path/to/rxdb")
...
redatam_save(dic,"path/to/new/dictionary.rxdb")
} # }
```
