# Execute a Redatam command from file

Execute a Redatam command: TABLE or AREALIST. This function removes all
the rows that contain total, na or mv values. Additionally, this
function removes the "mask" columns.

## Usage

``` r
redatam_run(dic, file_name, tot.omit = TRUE)
```

## Arguments

- dic:

  Dictionary identifier

- file_name:

  Program file name

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
df<-redatam_run(dic,"/path/to/nmir_test.spc")
print(df)
} # }
```
