require 'spec_helper'

describe 'test::vulcand_docker', type: :provider do
  let :chef_run do
    ChefSpec::ServerRunner.new(step_into: 'vulcand_docker').converge(described_recipe)
  end

  it 'should start a container on the start action' do
    expect(chef_run).to run_if_missing_docker_container('vulcand')
  end
end
