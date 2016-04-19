#
# Cookbook Name:: vulcand
# Attributes:: default
#
# Copyright 2016, Petr Belyaev <upcfrost@gmail.com>

# Install options
default['vulcand']['vulcand_docker_repo'] = 'mailgun/vulcand'
default['vulcand']['vulcand_docker_tag'] = 'v0.8.0-beta.2'
default['vulcand']['golang_docker_repo'] = 'golang'
default['vulcand']['golang_docker_tag'] = 'latest'
default['vulcand']['bin_path'] = '/usr/local/bin'
default['vulcand']['install_method'] = 'source_docker'

# Source compile command
default['vulcand']['src_command'] = 'go get github.com/vulcand/vulcand \
                                            github.com/vulcand/vulcand/vctl \
                                            github.com/vulcand/vulcand/vbundle'

# General run options
default['vulcand']['run_opts']['apiInterface'] = '0.0.0.0'
default['vulcand']['run_opts']['etcd'] = 'http://localhost:4001'

# Run options for docker
default['vulcand']['container_name'] = 'vulcand'
default['vulcand']['container_port'] = ['8181:8181', '8282:8282']
default['vulcand']['network_mode'] = 'host'
default['vulcand']['vulcand_docker_bin'] = '/go/bin/vulcand'
