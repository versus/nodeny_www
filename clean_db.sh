#!/bin/sh
rake db:migrate:reset
rake db:seed
#./load_all_entities.sh
