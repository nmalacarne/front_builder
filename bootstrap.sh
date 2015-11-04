#!/usr/bin/env bash

cd /vagrant
bundler
rake db:create
