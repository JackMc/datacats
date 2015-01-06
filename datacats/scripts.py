# Copyright 2014-2015 Boxkite Inc.

# This file is part of the DataCats package and is released under
# the terms of the GNU Affero General Public License version 3.0.
# See LICENSE.txt or http://www.fsf.org/licensing/licenses/agpl-3.0.html

from os.path import abspath, dirname

SCRIPTS_DIR = dirname(abspath(__file__)) + '/scripts'

SHELL = SCRIPTS_DIR + '/shell.sh'
WEB = SCRIPTS_DIR + '/web.sh'
