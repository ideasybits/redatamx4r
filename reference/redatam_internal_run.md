# Execute a Redatam command from file

Execute a Redatam command: TABLE or AREALIST.

## Usage

``` r
redatam_internal_run(dic, file_name)
```

## Arguments

- dic:

  Dictionary identifier (returned by redatam_open())

- file_name:

  Program file name

## Value

Raw dataset with all values: tot, na, mv, values.

## Author

Jaime Salvador

## Examples

``` r
if (FALSE) { # \dontrun{
dic<-redatam.open("path/to/rxdb")
df<-redatam.internal_run(dic,"/path/to/program.spc")
} # }
```
