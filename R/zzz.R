.onLoad <- function(libname, pkgname){

  libRuntimeName = system.file("redengine", "", package = pkgname);

  invisible(.Call(`_redatamx_redatam_init_`, libRuntimeName))

  assign('outputs', new.env(), envir = parent.env(environment()))
}

.onUnload<-function(libpath) {
  invisible(.Call(`_redatamx_redatam_destroy_`))
}

.onAttach<-function(libname, pkgname) {
  packageStartupMessage( paste("Using: ", redatam_version(), "\n") )
}
