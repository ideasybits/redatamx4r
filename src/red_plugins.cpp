//
//  red_plugins.cpp -- Redatam plugins
//
//  Copyright (C) 2025 Jaime Salvador
//
//  This file is part of Redatam package
//
//  Redatam package is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 2 of the License, or
//  (at your option) any later version.
//
//  Redatam package is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with Redatam package.  If not, see <http://www.gnu.org/licenses/>.

#include "cpp11.hpp"

#include <R.h>
#include <Rinternals.h>
#include <R_ext/Utils.h>

#include <vector>

#include "redengine_c.h"

extern std::shared_ptr<RedatamAPI> API;

[[cpp11::register]]
void redatam_load_plugin(const std::string& spc ) {
  API->redc_plugins_load_plugin(spc.c_str());
}
