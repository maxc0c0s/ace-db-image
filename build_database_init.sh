#!/bin/bash

echo "***building database***"

echo "copy databases creation files"
cp /tmp/ACE/Database/Create/create_mysql.sql /docker-entrypoint-initdb.d/01_create_mysql.sql

echo "copy tables creation files"
cp /tmp/ACE/Database/Base/AuthenticationBase.sql /docker-entrypoint-initdb.d/02_AuthenticationBase.sql
cp /tmp/ACE/Database/Base/CharacterBase.sql /docker-entrypoint-initdb.d/03_CharacterBase.sql
cp /tmp/ACE/Database/Base/WorldBase.sql /docker-entrypoint-initdb.d/04_WorldBase.sql

echo "copy update files"
cp /tmp/ACE/Database/Updates/Authentication/*.sql /docker-entrypoint-initdb.d
cp /tmp/ACE/Database/Updates/Character/*.sql /docker-entrypoint-initdb.d
cp /tmp/ACE/Database/Updates/World/*.sql /docker-entrypoint-initdb.d
