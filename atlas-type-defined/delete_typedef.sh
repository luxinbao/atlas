#!/bin/bash -x

ATLAS_USER="admin"
ATLAS_PWD="admin"
ATLAS_ENDPOINT="http://172.20.81.10:21001/api/atlas/v2"

ATLAS="curl -u ${ATLAS_USER}:${ATLAS_PWD}"
ATLAS_HEADER="-X DELETE -H Content-Type:application/json -H Accept:application/json -H Cache-Control:no-cache"

# typedef
$(${ATLAS} ${ATLAS_HEADER} ${ATLAS_ENDPOINT}/types/typedefs -d '@./delete-ftp-path.json')
