# redatamx: R Interface to 'Redatam' Library

Provides an API to work with 'Redatam' (see <https://redatam.org>)
databases in both formats: 'RXDB' (new format) and 'DICX' (old format)
and running 'Redatam' programs written in 'SPC' language. It's a wrapper
around 'Redatam' core and provides functions to open/close a database
(redatam_open()/redatam_close()), list entities and variables from the
database (redatam_entities(), redatam_variables()) and execute a 'SPC'
program and gets the results as data frames (redatam_query(),
redatam_run()).

## See also

Useful links:

- <https://ideasybits.github.io/redatamx4r/>

- <https://github.com/ideasybits/redatamx4r/>

- Report bugs at <https://github.com/ideasybits/redatamx4r/issues>

## Author

**Maintainer**: Jaime Salvador <jaime.salvador@ideasybits.com>
([ORCID](https://orcid.org/0000-0002-3564-8929))

Other contributors:

- CELADE \[copyright holder\]
