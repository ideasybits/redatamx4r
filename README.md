# Redatam (R package)

## About

The 'redatamx' package is a R-package to work with REDATAM databases in RXDB (new) or DICX (old) format.

To install the R package, run the following command:

``` r         
install.packages("redatamx")
```

## Usage

The Redatam package enables the use of REDATAM databases inside R. It is posible to open a REDATAM dictionary (**dicx** format or the new **rxdb** format) and run Redatam programs in written in SPC language.

For example:

``` r
#Firs, install the package
#install.packages("redatamx")

library(redatamx)

# open a dictionary
dic<-redatam_open("path/to/nmir.rxdb")

# run a frequency usig the new syntax
tbl1<-redatam_query(dic, "freq person.sexo")

#-- you can use the old syntax too
#-- tbl1<-redatam_query(dic, "table t1 as frequency person.sexo")

print(tbl1)

# close the dictionary
redatam_close(dic)
```

> You need to replace `path/to/nmir.rxdb` to point to your NMIR dictionary (Redatam database).

After running the above program, you will find a new dataframe **tbl1** that corresponds to the output of the REDATAM program. You can use R commands to operate with the new dataframe, the outputs of the above commands are:

```         
##  SEXO1_value SEXO1_label  value
##            1      Hombre  26834
##            2       Mujer  25355
```

## Credits

This package was created and is supported by Jaime Salvador ([jaime.salvador\@ideasybits.com](mailto:jaime.salvador@ideasybits.com){.email}).

The REDATAM software is developed by [CELADE](https://redatam.org/).
