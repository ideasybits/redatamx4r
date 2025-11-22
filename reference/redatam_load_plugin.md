# Load a custom plugin

Load a custom plugin into internal registry. This function is used to
add a custom plugin that implements a data source (to create database
from custom format) or data set (to save outputs in custom format).

## Usage

``` r
redatam_load_plugin(filePath)
```

## Arguments

- filePath:

  Full path to .dll (windows), .so (linux) or .dynlib (macOs)

## Value

no return.

## Author

Jaime Salvador

## Examples

``` r
if (FALSE) { # \dontrun{
redatam_load_plugin("path/to/custom/plugin")
} # }
```
