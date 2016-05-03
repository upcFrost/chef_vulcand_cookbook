require 'spec_helper'

describe 'test::vulcand_service', type: :provider do
  context 'Given default parameters' do

    let :chef_run do
      ChefSpec::ServerRunner.new(step_into: 'vulcand_service').converge(described_recipe)
    end

    it 'should create systemd service template' do
      expect(chef_run).to create_template('/lib/systemd/system/vulcand.service')
    end

    it 'should enable the vulcand service' do
      expect(chef_run).to enable_service('vulcand')
    end

    it 'should create the config dir if it is missing' do
      expect(chef_run).to create_directory('/etc/vulcand')
    end
  end
end
