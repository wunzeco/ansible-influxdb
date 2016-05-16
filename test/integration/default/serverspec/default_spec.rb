require 'spec_helper'

describe package('influxdb') do
  it { should be_installed }
end
