# List variables for entity

List the variables in an entity.

## Usage

``` r
redatam_variables(dic, entity_name)
```

## Arguments

- dic:

  Dictionary identifier (returned by redatam_open())

- entity_name:

  Entity's name

## Value

Data frame that contains all the variables from the ‘entity_name’.

## Author

Jaime Salvador

## Examples

``` r
if (FALSE) { # \dontrun{
dic<-redatam_open("path/to/rxdb")
redatam_variables(dic, "person")
} # }
```
