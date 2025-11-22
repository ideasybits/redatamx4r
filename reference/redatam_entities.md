# List entities

List the entities in a databse.

## Usage

``` r
redatam_entities(dic)
```

## Arguments

- dic:

  Dictionary identifier (returned by redatam_open())

## Value

Data frame that contains all the entities in the database.

## Author

Jaime Salvador

## Examples

``` r
if (FALSE) { # \dontrun{
dic<-redatam_open("path/to/rxdb")
redatam_entities(dic);
} # }
```
