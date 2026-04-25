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
#> RedEngine 1.3.0-final - Linux, compiled by 'GNU C++ version 13.3.0' on 'Apr 25 2026'
#>   Boost version      : 1_90
#>   Arrow version      : Compiled with '21.0.0', running on 21.0.0 (2100)
#>   Parquet version    : Compiled with 'parquet-cpp-arrow version 21.0.0'
#>   LibXml2 version    : Compiled with '2.15.1'
#>   Fmt version        : Compiled with '120100'
#>   OpenSSL version    : Compiled with 'OpenSSL 3.6.1 27 Jan 2026'
#> Datasources
#>   CSPRO            CSPRO Redatam datasource
#> Exporters
#>   CSV              CSV Redatam exporter (.csv files)
#>   JSON             JSON Redatam exporter (.json files)
#>   SIDRA            SIDRA Redatam exporter (.sidra files)
#>   TXT              TEXT Redatam exporter (.txt files)
```
