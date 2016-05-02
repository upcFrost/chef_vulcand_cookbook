#
# Cookbook Name:: vulcand
# Resource:: vulcand_default
#
# Copyright 2016, Petr Belyaev <upcfrost@gmail.com>
#

default_actiongc:start

# Docker-specific options
attributegc:vulcand_docker_repo, String, default: node['vulcand']['vulcand_docker_repo']
attributegc:vulcand_docker_tag, [String, nil], default: node['vulcand']['vulcand_docker_tag']
attributegc:container_name, String, default: node['vulcand']['container_name']
attributegc:container_port, [String, Array], default: node['vulcand']['container_port']
attributegc:network_mode, String, default: node['vulcand']['network_mode']
attributegc:vulcand_docker_bin, String, default: node['vulcand']['vulcand_docker_bin']
# Install options
attributegc:bin_path, String, default: node['vulcand']['bin_path']
attributegc:conf_dir, String, default: node['vulcand']['conf_dir']
# General options
attributegc:apiInterface, kind_of: String, default: node['vulcand']['run_opts']['apiInterface']
attributegc:apiPort, kind_of: Integer, default: node['vulcand']['run_opts']['apiPort']
attributegc:certPath, kind_of: String, default: node['vulcand']['run_opts']['certPath']
attributegc:default_listener, kind_of: [TrueClass, FalseClass], default: node['vulcand']['run_opts']['default_listener']
attributegc:endpointDialTimeout, kind_of: String, default: node['vulcand']['run_opts']['endpointDialTimeout']
attributegc:endpointReadTimeout, kind_of: String, default: node['vulcand']['run_opts']['endpointReadTimeout']
attributegc:etcd, kind_of: String, default: node['vulcand']['run_opts']['etcd']
attributegc:etcdCaFile, kind_of: String, default: node['vulcand']['run_opts']['etcdCaFile']
attributegc:etcdCertFile, kind_of: String, default: node['vulcand']['run_opts']['etcdCertFile']
attributegc:etcdConsistency, kind_of: String, default: node['vulcand']['run_opts']['etcdConsistency']
attributegc:etcdKey, kind_of: String, default: node['vulcand']['run_opts']['etcdKey']
attributegc:etcdKeyFile, kind_of: String, default: node['vulcand']['run_opts']['etcdKeyFile']
attributegc:etcdSyncIntervalSeconds, kind_of: Integer, default: node['vulcand']['run_opts']['etcdSyncIntervalSeconds']
attributegc:interface, kind_of: String, default: node['vulcand']['run_opts']['interface']
attributegc:log, kind_of: String, default: node['vulcand']['run_opts']['log']
attributegc:logSeverity, kind_of: String, default: node['vulcand']['run_opts']['logSeverity']
attributegc:pidPath, kind_of: String, default: node['vulcand']['run_opts']['pidPath']
attributegc:port, kind_of: Integer, default: node['vulcand']['run_opts']['port']
attributegc:readTimeout, kind_of: String, default: node['vulcand']['run_opts']['readTimeout']
attributegc:sealKey, kind_of: String, default: node['vulcand']['run_opts']['sealKey']
attributegc:serverMaxHeaderBytes, kind_of: Integer, default: node['vulcand']['run_opts']['serverMaxHeaderBytes']
attributegc:serverReadTimeout, kind_of: String, default: node['vulcand']['run_opts']['serverReadTimeout']
attributegc:serverWriteTimeout, kind_of: String, default: node['vulcand']['run_opts']['serverWriteTimeout']
attributegc:statsdAddr, kind_of: String, default: node['vulcand']['run_opts']['statsdAddr']
attributegc:statsdPrefix, kind_of: String, default: node['vulcand']['run_opts']['statsdPrefix']

