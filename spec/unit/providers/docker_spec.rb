require 'spec_helper'

describe 'test::vulcand_docker', type: :provider do
  context 'Given default parameters' do
    let :chef_run do
      ChefSpec::ServerRunner.new(step_into: 'vulcand_docker').converge(described_recipe)
    end

    it 'should start a container on the start action, net=host, ports=8181,8282' do
      expect(chef_run).to run_if_missing_docker_container('vulcand')
        .with(network_mode: 'host')
        .with(port: ['8181:8181', '8282:8282'])
    end
  end
end
