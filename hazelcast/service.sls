# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "hazelcast/map.jinja" import hazelcast with context %}

{% if hazelcast.use_supervisor %}


  
{% else %}

hazelcast_server_stop:
  cmd.run:
    - name: {{ hazelcast.home }}/hazelcast-{{ hazelcast.version }}/bin/stop.sh
    - runas: {{ hazelcast.user }}

hazelcast_server_start:
  cmd.run:
    - name: {{ hazelcast.home }}/hazelcast-{{ hazelcast.version }}/bin/start.sh
    - runas: {{ hazelcast.user }}    

{% endif %}