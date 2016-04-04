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
attribute :vulcand_bin, String, default: node['vulcand']['vulcand_bin']

action :start do
  docker_container new_resource.container_name do
    repo new_resource.repo
    tag new_resource.tag
    command [
      new_resource.vulcand_bin, \
      node['vulcand']['run_opts'].map { |k, v| '--' + k + '=' + v }.join(' ') \
    ].join(' ')
    port new_resource.port
    network_mode new_resource.network_mode
    action :run_if_missing
  end
end

action :stop do
  docker_container new_resource.container_name do
    action [:stop, :delete]
  end
end

action :restart do
  action_stop
  action_start
end
