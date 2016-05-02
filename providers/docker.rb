use_inline_resources
#
# Cookbook Name:: vulcand
# Resource:: vulcand_docker
#
# Copyright 2016, Petr Belyaev <upcfrost@gmail.com>
#

action :start do
  docker_container new_resource.container_name do
    repo new_resource.repo
    tag new_resource.tag
    command [
      new_resource.vulcand_docker_bin, \
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
