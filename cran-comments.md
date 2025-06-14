Version 1.1.4

* Redatam Engine updated to 1.1.1-final
* Fixed SWITCH command parser
* ENGINE, RXAPP: ENGINE, RXAPP: WIN32 Fixed file names with Latin characteres

Version 1.1.3

* Redatam Engine updated to 1.1.0-final (same major.minor version as CRAN project)
* Redatam Engine Windows version updated to use GCC 14.2 on windows
* Fixed non-utf8 characters in database paths
* Add 'valid(varname)' command to SPC syntax
* Fixed 'NOT(expr)' command

Version 1.1.2

* Fixed 'Packages which use Internet resources should fail gracefully with an informative message
if the resource is not available or has changed (and not give a check warning nor error)'.

Version 1.1.1

* Updated to Redatam engine 2025-04-03 (Redatam 1.0.1-final)
* Added 'redatam_load_plugin(file_path)' to load plugins conataining datasets or exporters
* Fixed some bugs inside Redaram 1.0.1-final.
* Added plugins to GitHub repository.
* Fixed redatam_info() output

Version 1.1.0

* Updated to Redatam engine 2024-12-22
* Added 'redatam_info()' function to get extended API information
* Added support to create Redatam databases: 'redatam_create()'

Version 1.0.1

* Added package's source code URL (github repository)
* Added package's issues  URL (github Issues)
* Added entries to 'Articles': Crosstabs
* Updated function's documentation
* Hid internal functions from documentation: redatam_init\_(), redatam_destroy\_(), redatam_internal_query(), redatam_internal_run()


Version 1.0.0 submission note:

* This package is the same as 'minired' but renamed to 'redatamx' as suggested by CELADE's member
* 'minired' package will be marked as DEPRECATED and will be replaced with 'redatamx'
* This version works with macOs x68_64 and arm64 architectures
* Removed C++17 requirement, the code compiles with C++11 standard


 
