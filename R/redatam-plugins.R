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

#' @title Load a custom plugin
#' @author Jaime Salvador
#' @description Load a custom plugin into internal registry.
#' This function is used to add a custom plugin that implements a data source
#' (to create database from custom format) or data set (to save outputs in
#' custom format).
#' @param filePath Full path to .dll (windows), .so (linux) or .dynlib (macOs)
#' @return no return.
#' @export
#' @examples
#' \dontrun{
#' redatam_load_plugin("path/to/custom/plugin")
#' }
#'
redatam_load_plugin <- function(filePath) {
  invisible(.Call(`_redatamx_redatam_load_plugin`, filePath))
}
