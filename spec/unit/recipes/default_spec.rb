require 'spec_helper'

describe 'vulcand::default' do
  let :chef_run do
    ChefSpec::SoloRunner.new(platform: 'centos', version: '7.0')
  end

  it 'should pull the docker image when install_method = docker' do
    chef_run.node.set['vulcand']['install_method'] = 'docker'
    chef_run.converge(described_recipe)
    expect(chef_run).to pull_docker_image(chef_run.node['vulcand']['vulcand_docker_repo'])
  end

  it 'should pull golang image and build the app when install_method = source_docker' do
    chef_run.node.set['vulcand']['install_method'] = 'source_docker'
    chef_run.node.set['vulcand']['bin_path'] = '~/tmp'
    chef_run.converge(described_recipe)
    expect(chef_run).to pull_docker_image(chef_run.node['vulcand']['golang_docker_repo'])
    expect(chef_run).to run_docker_container('vulcand_compile')
  end
end
