# Close dictionary

Close a REDATAM database.

## Usage

``` r
redatam_close(dic)
```

## Arguments

- dic:

  Dictionary identifier (returned by redatam_open())

## Value

No return value.

## Author

Jaime Salvador

## Examples

``` r
if (FALSE) { # \dontrun{
dic<-redatam_open("path/to/rxdb")
# run some queries using 'redatam_query' or 'redatam_run'
# close de dictionary
redatam_close(dic);
} # }
```
