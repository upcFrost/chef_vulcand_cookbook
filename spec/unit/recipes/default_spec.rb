require 'spec_helper'

describe 'vulcand::default' do
  context 'Using the docker install method' do
    let :chef_run do
      ChefSpec::ServerRunner.new do |node|
        node.set['vulcand']['install_method'] = 'docker'
      end.converge(described_recipe)
    end

    it 'should pull the vulcand image from the specified repo' do
      expect(chef_run).to pull_docker_image(chef_run.node['vulcand']['vulcand_docker_repo'])
    end
  end

  context 'Using the source_docker install method' do
    let :chef_run do
      ChefSpec::ServerRunner.new do |node|
        node.set['vulcand']['install_method'] = 'source_docker'
      end.converge(described_recipe)
    end

    it 'should pull the golang image from the docker hub' do
      expect(chef_run).to pull_docker_image(chef_run.node['vulcand']['golang_docker_repo'])
    end

    it 'should compile the vulcand within the golang container' do
      expect(chef_run).to run_docker_container('vulcand_compile')
        .with(command: chef_run.node['vulcand']['src_command'])
        .with(volumes: { chef_run.node['vulcand']['bin_path'] => {} })
        .with(autoremove: true)
    end
  end

  context 'Using the source install method' do
    let :chef_run do
      ChefSpec::ServerRunner.new do |node|
        node.set['vulcand']['install_method'] = 'source'
      end.converge(described_recipe)
    end

    before do
      stub_command('/usr/local/go/bin/go version | grep "go1.5 "').and_return(true)
    end

    it 'should include golang recipe to ensure it is installed' do
      expect(chef_run).to include_recipe('golang')
    end

    it 'should execute vulcand compilation' do
      expect(chef_run).to run_execute('Compile vulcand')
        .with(command: chef_run.node['vulcand']['src_command'])
    end
  end
end
