# Copyright 2024. Jaime Salvador
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this proprietary software and associated documentation files (the "Software"),
# to use, publish, or distribute copies of the Software, and to permit persons to
# whom the Software is furnished to do so.
#
# Any other use, including modifying, adapting, reverse engineering, decompiling,
# or disassembling, is not permitted.
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

#' @title Open dictionary
#' @author Jaime Salvador
#' @description Open a REDATAM database.
#' This function returns an ID than can be used in functions to query data.
#' @param dictionary_name Dictionary file name
#' @return ID than can be used in functions to query data.
#' @export
#' @examples
#' \dontrun{
#' dic<-redatam_open("path/to/rxdb")
#' }
redatam_open <- function(dictionary_name) {
  .Call(`_redatamx_redatam_open`, dictionary_name)
}

#' @title Save dictionary
#' @author Jaime Salvador
#' @description Save a REDATAM database.
#' This function  can be used to save a dictionary.
#' @param dic Dictionary identifier (returned by redatam_open())
#' @param name Dictionary file name
#' @return {No return value.}
#' @export
#' @examples
#' \dontrun{
#' dic<-redatam_open("path/to/rxdb")
#' ...
#' redatam_save(dic,"path/to/new/dictionary.rxdb")
#' }
redatam_save <- function(dic, name = "") {
  invisible(.Call(`_redatamx_redatam_save`, dic, name))
}

#' @title Close dictionary
#' @author Jaime Salvador
#' @description Close a REDATAM database.
#' @param dic Dictionary identifier (returned by redatam_open())
#' @return {No return value.}
#' @export
#' @examples
#' \dontrun{
#' dic<-redatam_open("path/to/rxdb")
#' # run some queries using 'redatam_query' or 'redatam_run'
#' # close de dictionary
#' redatam_close(dic);
#' }
redatam_close <- function(dic) {
  invisible(.Call(`_redatamx_redatam_close`, dic))
}

#' @title List entities
#' @author Jaime Salvador
#' @description List the entities in a databse.
#' @param dic Dictionary identifier (returned by redatam_open())
#' @return Data frame that contains all the entities in the database.
#' @export
#' @examples
#' \dontrun{
#' dic<-redatam_open("path/to/rxdb")
#' redatam_entities(dic);
#' }
redatam_entities <- function(dic) {
  .Call(`_redatamx_redatam_entities`, dic)
}

#' @title List variables for entity
#' @author Jaime Salvador
#' @description List the variables in an entity.
#' @param dic Dictionary identifier (returned by redatam_open())
#' @param entity_name Entity's name
#' @return Data frame that contains all the variables from the \sQuote{entity_name}.
#' @export
#' @examples
#' \dontrun{
#' dic<-redatam_open("path/to/rxdb")
#' redatam_variables(dic, "person")
#' }
redatam_variables <- function(dic, entity_name) {
  .Call(`_redatamx_redatam_variables`, dic, entity_name)
}

#' @title Get the Redatam API version
#' @author Jaime Salvador
#' @description Returns the current version of the native Redatam API.
#' @return String with the Redatam Engine version.
#' @export
#' @examples
#' redatam_version()
redatam_version <- function() {
  .Call(`_redatamx_redatam_version`)
}

#' @title Get extended Redatam API information
#' @author Jaime Salvador
#' @description Returns extended information about datasources and datasets available.
#' @return String with the Redatam extended information.
#' @export
#' @examples
#' redatam_info()
redatam_info <- function() {
  cat(.Call(`_redatamx_redatam_info`))
}

#----------------------------------------------------------------------
#' @title Create Redatam database
#' @author Jaime Salvador
#' @description Create a new Redatam database.
#' @param schema_name Dictionary schema in json format
#' @param config_name Configuration in json format
#' @return {No return value.}
#' @examples
#' \dontrun{
#' redatam_create("path/to/schema.json","path/to/config.json")
#' }
redatam_create <- function(schema_name, config_name) {
  invisible(.Call(`_redatamx_redatam_create`, schema_name, config_name))
}

#----------------------------------------------------------------------


#' @title Execute a Redatam command from text
#' @author Jaime Salvador
#' @description Execute a Redatam command: TABLE or AREALIST.
#' @param dic Dictionary identifier (returned by redatam_open())
#' @param spc Program text in SPC format
#' @return Raw dataset with al values: tot, na, mv, values.
#' @keywords internal
#' @examples
#' \dontrun{
#' dic<-redatam_open("path/to/rxdb")
#' df<-redatam_internal_query(dic,"freq person.sexo")
#' }
redatam_internal_query <- function(dic, spc) {
  .Call(`_redatamx_redatam_internal_query`, dic, spc)
}

#' @title Execute a Redatam command from file
#' @author Jaime Salvador
#' @description Execute a Redatam command: TABLE or AREALIST.
#' @param dic Dictionary identifier (returned by redatam_open())
#' @param file_name Program file name
#' @return Raw dataset with all values: tot, na, mv, values.
#' @keywords internal
#' @examples
#' \dontrun{
#' dic<-redatam.open("path/to/rxdb")
#' df<-redatam.internal_run(dic,"/path/to/program.spc")
#' }
redatam_internal_run <- function(dic, file_name) {
  .Call(`_redatamx_redatam_internal_run`, dic, file_name)
}

#' @title Initialize engine
#' @author Jaime Salvador
#' @description Initialize the Redatam engine.
#' This function is automatically called when the package is loaded.
#' @param pachageDir Relative path to Redatam runtime (dll, so or dynlib)
#' @return {No return value.}
#' @keywords internal
#' @examples
#' \dontrun{
#' redatam_init_("/engine");
#' }
redatam_init_ <- function(pachageDir) {
  invisible(.Call(`_redatamx_redatam_init_`, pachageDir))
}

#' @title Destroy engine
#' @author Jaime Salvador
#' @description Destroy the Redatam engine.
#' This function is automatically called when the package is unloaded.
#' @return {No return value.}
#' @keywords internal
#' @examples
#' \dontrun{
#' redatam_destroy_();
#' }
redatam_destroy_ <- function() {
  invisible(.Call(`_redatamx_redatam_destroy_`))
}





