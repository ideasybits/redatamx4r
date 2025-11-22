# Execute a Redatam command from text

Execute a Redatam command: TABLE or AREALIST. This function removes all
the rows that contain total, na or mv values. Additionally, this
function removes the "mask" columns.

## Usage

``` r
redatam_query(dic, spc, tot.omit = TRUE)
```

## Arguments

- dic:

  Dictionary identifier

- spc:

  Program text in SPC format

- tot.omit:

  Omit rows containing total, na y mv values

## Value

If the program contains more than one table, the method returns the last
table (in the SPC program) as a data frame. All the tables are
registered (as data frames) in a custom environment called
‘redatam::outputs’.

## Author

Jaime Salvador

## Examples

``` r
if (FALSE) { # \dontrun{
dic<-redatam_open("path/to/rxdb")
df<-redatam_query(dic,"freq person.sexo")
print(df)
} # }
```
