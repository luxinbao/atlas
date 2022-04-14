#!/bin/bash -x

ATLAS_USER="admin"
ATLAS_PWD="admin"
ATLAS_ENDPOINT="http://172.20.81.10:21001/api/atlas/v2"

ATLAS="curl -u ${ATLAS_USER}:${ATLAS_PWD}"
ATLAS_HEADER="-X POST -H Content-Type:application/json -H Accept:application/json -H Cache-Control:no-cache"

# typedef
$(${ATLAS} ${ATLAS_HEADER} ${ATLAS_ENDPOINT}/types/typedefs -d '@./1_typedef-ftp-server.json')
$(${ATLAS} ${ATLAS_HEADER} ${ATLAS_ENDPOINT}/types/typedefs -d '@./2_typedef-ftp-path.json')
$(${ATLAS} ${ATLAS_HEADER} ${ATLAS_ENDPOINT}/types/typedefs -d '@./3_typedef-ftp-file.json')
$(${ATLAS} ${ATLAS_HEADER} ${ATLAS_ENDPOINT}/types/typedefs -d '@./4_typedef-etl_datasync_process.json')
$(${ATLAS} ${ATLAS_HEADER} ${ATLAS_ENDPOINT}/types/typedefs -d '@./5_typedef-etl_offlinesvr_process.json')
$(${ATLAS} ${ATLAS_HEADER} ${ATLAS_ENDPOINT}/types/typedefs -d '@./6_ftp-server-relation.json')
