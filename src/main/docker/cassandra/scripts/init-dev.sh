#!/usr/bin/env bash

KEYSPACE_NAME=springonegateway
cqlsh -f /cql/create-keyspace.cql $CASSANDRA_CONTACT_POINT
cqlsh -k $KEYSPACE_NAME -f /cql/create-tables.cql $CASSANDRA_CONTACT_POINT
