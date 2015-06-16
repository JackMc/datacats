#!/bin/bash

set -e

su postgres -c "psql -w -d ckan -h db -f /usr/share/postgresql/9.3/contrib/postgis-2.1/postgis.sql"
su postgres -c "psql -w -d ckan -h db -f /usr/share/postgresql/9.3/contrib/postgis-2.1/spatial_ref_sys.sql"
su postgres -c "psql -w -d ckan -h db -c 'ALTER VIEW geometry_columns OWNER TO ckan;'"
su postgres -c "psql -w -d ckan -h db -c 'ALTER TABLE spatial_ref_sys OWNER TO ckan;'"
