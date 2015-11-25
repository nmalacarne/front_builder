#
# Cookbook Name:: front-builder.com
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
execute 'apt-get update'

package 'rails'
package 'nodejs'
