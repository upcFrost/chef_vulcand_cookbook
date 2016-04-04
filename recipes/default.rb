#
# Cookbook Name:: vulcand
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# Pull the docker image from Docker Hub
docker_image 'vulcand' do
  repo node['vulcand']['repo']
  tag node['vulcand']['tag']
  action :pull
end
