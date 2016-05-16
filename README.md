influxdb
==============

Ansible role to install and configure InfluxDB.


## Example

```
- hosts: myhost

  vars:
    
  roles:
    - wunzeco.influxdb
```


## Dependencies

none

## ToDo
- template influxdb.conf
- template /etc/default/influxdb
- template or copy /etc/logrotate.d/influxdb
