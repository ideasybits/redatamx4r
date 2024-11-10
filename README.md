# redatamx

## About

**redatamx** is a package to work with REDATAM databases in RXDB (new) or DICX (old) format.

## Installation

To install the R package, run the following command:

``` r
# Install released version from CRAN
install.packages("redatamx")
```

## Usage

The Redatam package enables the use of REDATAM databases inside R. It is possible to open a REDATAM dictionary (**dicx** format or the new **rxdb** format) and run Redatam programs written in SPC language.

For example:

``` r
library(redatamx)

# open a dictionary
dic<-redatam_open("path/to/nmir.rxdb")

# run a frequency using the new syntax
tbl1<-redatam_query(dic, "freq person.sexo")

#-- you can use the old syntax too
#-- tbl1<-redatam_query(dic, "table t1 as frequency person.sexo")

print(tbl1)

# close the dictionary
redatam_close(dic)
```

> You need to replace `path/to/nmir.rxdb` to point to your NMIR dictionary (Redatam database).

After running the above program, you will find a new data frame *tbl1* that corresponds to the output of the REDATAM program. You can use R commands to operate with the new data frame, the output of the above program is:

```         
##  SEXO1_value SEXO1_label  value
##            1      Hombre  26834
##            2       Mujer  25355
```

## Credits

This package was created and is supported by Jaime Salvador ([jaime.salvador\@ideasybits.com](mailto:jaime.salvador@ideasybits.com){.email}).

The REDATAM software is developed by [CELADE](https://redatam.org/).
