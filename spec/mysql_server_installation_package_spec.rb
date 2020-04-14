require 'spec_helper'

describe 'test::installation_server' do
  let(:installation_server_package_centos_5) { ChefSpec::ServerRunner.new(platform: 'centos', version: '5.11') }
  let(:installation_server_package_centos_6) { ChefSpec::ServerRunner.new(platform: 'centos', version: '6.9') }
  let(:installation_server_package_centos_7) { ChefSpec::ServerRunner.new(platform: 'centos', version: '7') }
  let(:installation_server_package_fedora) { ChefSpec::ServerRunner.new(platform: 'fedora', version: '30') }
  let(:installation_server_package_debian_7) { ChefSpec::ServerRunner.new(platform: 'debian', version: '7.11') }
  let(:installation_server_package_debian_8) { ChefSpec::ServerRunner.new(platform: 'debian', version: '8.11') }
  let(:installation_server_package_ubuntu_1404) { ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '14.04') }
  let(:installation_server_package_ubuntu_1604) { ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '16.04') }
  let(:installation_server_package_ubuntu_1804) { ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '18.04') }

  context 'using el6' do
    it 'installs mysql_server_installation_package[default] when version is 5.6' do
      installation_server_package_centos_6.node.default['mysql']['version'] = '5.6'
      installation_server_package_centos_6.converge(described_recipe)
      expect(installation_server_package_centos_6).to install_mysql_server_installation_package('default').with(
        version: '5.6',
        package_name: 'mysql-community-server'
      )
    end

    it 'installs mysql_server_installation_package[default] when version is 5.7' do
      installation_server_package_centos_6.node.default['mysql']['version'] = '5.7'
      installation_server_package_centos_6.converge(described_recipe)
      expect(installation_server_package_centos_6).to install_mysql_server_installation_package('default').with(
        version: '5.7',
        package_name: 'mysql-community-server'
      )
    end
  end

  context 'using el7' do
    it 'installs mysql_server_installation_package[default] when version is 5.6' do
      installation_server_package_centos_7.node.default['mysql']['version'] = '5.6'
      installation_server_package_centos_7.converge(described_recipe)
      expect(installation_server_package_centos_7).to install_mysql_server_installation_package('default').with(
        version: '5.6',
        package_name: 'mysql-community-server'
      )
    end

    it 'installs mysql_server_installation_package[default] when version is 5.7' do
      installation_server_package_centos_7.node.default['mysql']['version'] = '5.7'
      installation_server_package_centos_7.converge(described_recipe)
      expect(installation_server_package_centos_7).to install_mysql_server_installation_package('default').with(
        version: '5.7',
        package_name: 'mysql-community-server'
      )
    end
  end

  context 'using fedora' do
    it 'installs mysql_server_installation_package[default] when version is 5.6' do
      installation_server_package_fedora.node.default['mysql']['version'] = '5.6'
      installation_server_package_fedora.converge(described_recipe)
      expect(installation_server_package_fedora).to install_mysql_server_installation_package('default').with(
        version: '5.6',
        package_name: 'mysql-community-server'
      )
    end

    it 'installs mysql_server_installation_package[default] when version is 5.7' do
      installation_server_package_fedora.node.default['mysql']['version'] = '5.7'
      installation_server_package_fedora.converge(described_recipe)
      expect(installation_server_package_fedora).to install_mysql_server_installation_package('default').with(
        version: '5.7',
        package_name: 'mysql-community-server'
      )
    end
  end

  context 'using debian 7' do
    it 'installs mysql_server_installation_package[default] when version is 5.5' do
      installation_server_package_debian_7.node.default['mysql']['version'] = '5.5'
      installation_server_package_debian_7.converge(described_recipe)
      expect(installation_server_package_debian_7).to install_mysql_server_installation_package('default').with(
        version: '5.5',
        package_name: 'mysql-server-5.5'
      )
    end
  end

  context 'using debian 8' do
    it 'installs mysql_server_installation_package[default] when version is 5.5' do
      installation_server_package_debian_8.node.default['mysql']['version'] = '5.5'
      installation_server_package_debian_8.converge(described_recipe)
      expect(installation_server_package_debian_8).to install_mysql_server_installation_package('default').with(
        version: '5.5',
        package_name: 'mysql-server-5.5'
      )
    end
  end

  context 'using ubuntu 14.04' do
    it 'installs mysql_server_installation_package[default] when version is 5.5' do
      installation_server_package_ubuntu_1404.node.default['mysql']['version'] = '5.5'
      installation_server_package_ubuntu_1404.converge(described_recipe)
      expect(installation_server_package_ubuntu_1404).to install_mysql_server_installation_package('default').with(
        version: '5.5',
        package_name: 'mysql-server-5.5'
      )
    end
  end

  context 'using ubuntu 14.04' do
    it 'installs mysql_server_installation_package[default] when version is 5.6' do
      installation_server_package_ubuntu_1404.node.default['mysql']['version'] = '5.6'
      installation_server_package_ubuntu_1404.converge(described_recipe)
      expect(installation_server_package_ubuntu_1404).to install_mysql_server_installation_package('default').with(
        version: '5.6',
        package_name: 'mysql-server-5.6'
      )
    end
  end

  context 'using ubuntu 16.04' do
    it 'installs mysql_server_installation_package[default] when version is 5.7' do
      installation_server_package_ubuntu_1604.node.default['mysql']['version'] = '5.7'
      installation_server_package_ubuntu_1604.converge(described_recipe)
      expect(installation_server_package_ubuntu_1604).to install_mysql_server_installation_package('default').with(
        version: '5.7',
        package_name: 'mysql-server-5.7'
      )
    end
  end

  context 'using ubuntu 18.04' do
    it 'installs mysql_server_installation_package[default] when version is 5.7' do
      installation_server_package_ubuntu_1804.node.default['mysql']['version'] = '5.7'
      installation_server_package_ubuntu_1804.converge(described_recipe)
      expect(installation_server_package_ubuntu_1804).to install_mysql_server_installation_package('default').with(
        version: '5.7',
        package_name: 'mysql-server-5.7'
      )
    end
  end
end
