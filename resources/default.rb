#
# Cookbook Name:: vulcand
# Resource:: vulcand_default
#
# Copyright 2016, Petr Belyaev <upcfrost@gmail.com>
#

default_action :start

attribute :repo, String, default: node['vulcand']['repo']
attribute :tag, [String, nil], default: node['vulcand']['tag']
attribute :container_name, String, default: node['vulcand']['container_name']
attribute :port, [String, Array], default: node['vulcand']['port']
attribute :network_mode, String, default: node['vulcand']['network_mode']
attribute :vulcand_docker_bin, String, default: node['vulcand']['vulcand_docker_bin']
