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
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_mode 644 }
  end
end

describe service('influxdb') do
  it { should be_running }
end
