include_attribute "kkafka"
include_attribute "ndb"
include_attribute "hops"

default['onlinefs']['version']                = "1.2"
default['onlinefs']['download_url']           = "#{node['download_url']}/onlinefs/#{node['onlinefs']['version']}/onlinefs.tgz"

default['onlinefs']['user']                   = "onlinefs"
default['onlinefs']['group']                  = "onlinefs"

default['onlinefs']['home']                   = "#{node['install']['dir']}/onlinefs"
default['onlinefs']['etc']                    = "#{node['onlinefs']['home']}/etc"
default['onlinefs']['logs']                   = "#{node['onlinefs']['home']}/logs"
default['onlinefs']['token']                  = "#{node['onlinefs']['etc']}/token"

# Data volume directories
default['onlinefs']['data_volume']['root_dir']  = "#{node['data']['dir']}/onlinefs"
default['onlinefs']['data_volume']['etc_dir']   = "#{node['onlinefs']['data_volume']['root_dir']}/etc"
default['onlinefs']['data_volume']['logs_dir']  = "#{node['onlinefs']['data_volume']['root_dir']}/logs"

default['onlinefs']['hopsworks']['email']     = "onlinefs@hopsworks.ai"
default['onlinefs']['hopsworks']['password']  = "onlinefspw"

default['onlinefs']['monitoring']             = 12800

default['onlinefs']['service']['thread_number'] = 10
