require 'spec_helper'

describe package('influxdb') do
  it { should be_installed }
end

%w(
  /etc/influxdb/influxdb.conf
  /etc/logrotate.d/influxdb
  /etc/default/influxdb
).each do |f|
  describe file(f) do
  end
end

describe service('influxdb') do
  it { should be_running }
end
