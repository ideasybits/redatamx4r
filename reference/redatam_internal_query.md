# Execute a Redatam command from text

Execute a Redatam command: TABLE or AREALIST.

## Usage

``` r
redatam_internal_query(dic, spc)
```

## Arguments

- dic:

  Dictionary identifier (returned by redatam_open())

- spc:

  Program text in SPC format

## Value

Raw dataset with al values: tot, na, mv, values.

## Author

Jaime Salvador

## Examples

``` r
if (FALSE) { # \dontrun{
dic<-redatam_open("path/to/rxdb")
df<-redatam_internal_query(dic,"freq person.sexo")
} # }
```
