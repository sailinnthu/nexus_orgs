#
# Cookbook:: nexus_orgs
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# contoso
managed_organization 'contoso' do
  organization 'contoso'
  full_name 'Contoso Servers'
  email 'contoso@chef.io'
end

nexus_sync '/var/chef/contoso' do
  url 'https://sonatype-nexus-repo.com.sg:8443/service/rest/v1/search/assets?group=/contoso' #location for contoso repo url in Nexus
  user node['nexus_sync']['user']
  password node['nexus_sync']['password']
end

policyfile_loader '/var/chef/contoso' do
  organization 'contoso'
end

# contoso-g1
managed_organization 'contoso-g1' do
  organization 'contoso-g1'
  full_name 'Contoso Group1 Servers'
  email 'contoso_g1_user@chef.io'
end

nexus_sync '/var/chef/contoso-g1' do
  url 'https://sonatype-nexus-repo.com.sg:8443/service/rest/v1/search/assets?group=/contoso-g1' #location for contoso-g1 repo url in Nexus
  user node['nexus_sync']['user']
  password node['nexus_sync']['password']
end

policyfile_loader '/var/chef/contoso-g1' do
  organization 'contoso-g1'
end

# contoso-g2
managed_organization 'contoso-g2' do
  organization 'contoso-g2'
  full_name 'Contoso Group2 Servers'
  email 'contoso_g2_user@chef.io'
end

nexus_sync '/var/chef/contoso-g2' do
  url 'https://sonatype-nexus-repo.com.sg:8443/service/rest/v1/search/assets?group=/contoso-g2' #location for contoso-g2 repo url in Nexus
  user node['nexus_sync']['user']
  password node['nexus_sync']['password']
end

policyfile_loader '/var/chef/contoso-g2' do
  organization 'contoso-g2'
end
