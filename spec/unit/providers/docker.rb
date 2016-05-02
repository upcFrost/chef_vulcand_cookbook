require 'spec_helper'

describe 'vulcand_docker', type: :provider do
  let :chef_run do
    ChefSpec::SoloRunner.new
  end

  it 'should start a container on the start action' do
    expect(chef_run).to run_docker_container('vulcand').with(:action, [:create])
  end
end
