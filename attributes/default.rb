#
# Cookbook Name:: vulcand
# Attributes:: default
#
# Copyright 2016, Petr Belyaev <upcfrost@gmail.com>

default['vulcand']['repo'] = 'mailgun/vulcand'
default['vulcand']['tag'] = 'v0.8.0-beta.2'
default['vulcand']['container_name'] = 'vulcand'
default['vulcand']['port'] = ['8181:8181', '8282:8282']
default['vulcand']['network_mode'] = 'host'
default['vulcand']['vulcand_bin'] = '/go/bin/vulcand'
default['vulcand']['run_opts']['apiInterface'] = '0.0.0.0'
default['vulcand']['run_opts']['etcd'] = 'http://localhost:4001'
