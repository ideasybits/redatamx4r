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

## Plugins

You can use custom plugins:

* Datasources: custom formats for database creation
* Exporters: custom formats for exporting the outputs (tables) of SPC queries

You can check the available plugins using `redatam_info()` function:

```
> redatam_info()
RedEngine 1.0.1-final - <<compiler info>> on 'Apr  3 2025'
  Boost version      : 1_85
  Arrow version      : Compiled with '19.0.1', running on 19.0.1 (1900)
  Parquet version    : Compiled with 'parquet-cpp-arrow version 19.0.1'
  LibXml2 version    : Compiled with '2.13.6'
  Fmt version        : Compiled with '110002'
  OpenSSL version    : Compiled with 'OpenSSL 3.4.1 11 Feb 2025'
Datasources
  CSPRO            CSPRO Redatam datasource
Exporters
  JSON             JSON Redatam exporter (.json files)
  SIDRA            SIDRA Redatam exporter (.sidra files)
  TXT              TEXT Redatam exporter (.txt files)
```

The built-in plugins are: CSPRO, CSV, JSON, SIDRA, TXT.


Third-party plugins available for donwload in the release page.

* CSV, SPSS and STATA datasources
* XLSX exporter

Depending on the operating system, you need to load `.dll` file for windows, `.so` for linux and `.dynlib` for macOS (arm or x86).

```
redatam_load_plugin('path/to/plugins/datasource-csv.dll')
redatam_load_plugin('path/to/plugins/datasource-spss.dll')
redatam_load_plugin('path/to/plugins/datasource-cspro8.dll')
redatam_load_plugin('path/to/plugins/exporter-xlsx.dll')
```

```
> redatam_info()
RedEngine 1.1.0-final - <<compiler info>> on 'Apr 27 2025'
  Boost version      : 1_87
  Arrow version      : Compiled with '19.0.1', running on 19.0.1 (1900)
  Parquet version    : Compiled with 'parquet-cpp-arrow version 19.0.1'
  LibXml2 version    : Compiled with '2.13.5'
  Fmt version        : Compiled with '110002'
  OpenSSL version    : Compiled with 'OpenSSL 3.5.0 8 Apr 2025'
Datasources
  CSPRO            CSPRO Redatam datasource
  SPSS             SPSS Redatam datasource
  STATA            STATA Redatam datasource
Exporters
  CSV              CSV Redatam exporter (.csv files)
  JSON             JSON Redatam exporter (.json files)
  SIDRA            SIDRA Redatam exporter (.sidra files)
  TXT              TEXT Redatam exporter (.txt files)
  XLSX             XLSX Redatam exporter (.xlsx files)
```


## Credits

This package was created and is supported by Jaime Salvador ([jaime.salvador\@ideasybits.com](mailto:jaime.salvador@ideasybits.com){.email}).

The REDATAM software is developed by [CELADE](https://redatam.org/).
