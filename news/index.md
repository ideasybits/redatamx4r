# Changelog

## Version 1.2.1

CRAN release: 2025-11-23

- Redatam Engine updated to 1.2.1-final
- Fixed RUNDEF FILTER bug

## Version 1.2.0

CRAN release: 2025-11-03

- Redatam Engine updated to 1.2.0-final
- New CSPro8 support
- Fixed JSON exports for aggregation functions (MEDIAN, AVERAGE, etc)
- @cmpcode variable is created for all selectable entities
- Variables and entities can be referenced by alias
- Fixed UTF-8 characters in database creation (lookups)
- Auto configuration mode in database creation:
  [@cmpdode](https://github.com/cmpdode), no SDC, data file,
  auto-lookups

## Version 1.1.4

CRAN release: 2025-06-09

- Redatam Engine updated to 1.1.1-final
- Fixed SWITCH command parser
- ENGINE, RXAPP: WIN32 Fixed file names with Latin characteres

## Version 1.1.3

CRAN release: 2025-04-27

- Redatam Engine updated to 1.1.0-final (same major.minor version as
  CRAN project)
- Redatam Engine Windows version updated to use GCC 14.2 on windows
- Fixed non-utf8 characters in database paths
- Add ‘valid(varname)’ command to SPC syntax
- Fixed ‘NOT(expr)’ command

## Version 1.1.2

CRAN release: 2025-04-05

- Fixed ‘Packages which use Internet resources should fail gracefully
  with an informative message if the resource is not available or has
  changed (and not give a check warning nor error)’.

## Redatam R package version 1.1.1

CRAN release: 2025-04-03

- Updated to Redatam engine 2025-04-03 (Redatam 1.0.1-final)
- Added ‘redatam_load_plugin(file_path)’ to load plugins conataining
  datasets or exporters
- Fixed some bugs inside Redaram 1.0.1-final.
- Added plugins to GitHub repository.
- Fixed redatam_info() output

## Redatam R package version 1.1.0

CRAN release: 2024-12-23

- Updated to Redatam engine 2024-12-22.
- Added ‘redatam_info()’ function to get extended API information.
- Added support to create Redatam databases: ‘redatam_create()’

## Redatam R package version 1.0.1

CRAN release: 2024-11-21

- Added package’s source code URL (github repository)
- Added package’s issues URL (github Issues)
- Added entries to ‘Articles’: Crosstabs
- Updated function’s documentation
- Hid internal functions from documentation: redatam_init\_(),
  redatam_destroy\_(), redatam_internal_query(), redatam_internal_run()

## Redatam R package version 1.0.0

CRAN release: 2024-10-29

- First working version.
- Initial CRAN submission.
