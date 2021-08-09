name              "onlinefs"
maintainer        "Logical Clocks"
maintainer_email  'info@logicalclocks.com'
license           'GPLv3'
description       'Installs/Configures the Hopsworks online feature store service'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "3.0.0"

recipe "onlinefs::default", "Configures the Hopsworks online feature store service"

depends 'kkafka'
depends 'ndb'
depends 'hops'
depends 'kagent'
depends 'consul'

attribute "onlinefs/service/thread_number",
          :description => "number of threads reading from kafka and writing to rondb",
          :type => "string"

attribute "onlinefs/monitoring",
          :description => "Port on which the monitoring page is available",
          :type => "string"
