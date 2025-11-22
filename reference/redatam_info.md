# Get extended Redatam API information

Returns extended information about datasources and datasets available.

## Usage

``` r
redatam_info()
```

## Value

String with the Redatam extended information.

## Author

Jaime Salvador

## Examples

``` r
redatam_info()
#> RedEngine 1.2.1-final - Linux, compiled by 'GNU C++ version 13.3.0' on 'Nov 19 2025'
#>   Boost version      : 1_89
#>   Arrow version      : Compiled with '21.0.0', running on 21.0.0 (2100)
#>   Parquet version    : Compiled with 'parquet-cpp-arrow version 21.0.0'
#>   LibXml2 version    : Compiled with '2.15.0'
#>   Fmt version        : Compiled with '120000'
#>   OpenSSL version    : Compiled with 'OpenSSL 3.6.0 1 Oct 2025'
#> Datasources
#>   CSPRO            CSPRO Redatam datasource
#> Exporters
#>   CSV              CSV Redatam exporter (.csv files)
#>   JSON             JSON Redatam exporter (.json files)
#>   SIDRA            SIDRA Redatam exporter (.sidra files)
#>   TXT              TEXT Redatam exporter (.txt files)
```
