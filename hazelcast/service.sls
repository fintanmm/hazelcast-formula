# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "hazelcast/map.jinja" import hazelcast with context %}

{% if hazelcast.use_supervisor %}

{%- salt['state.sls']('supervisor') %}
  
{% else %}

hazelcast_server:
  cmd.run:
    - name: {{ hazelcast.home }}/hazelcast-{{ hazelcast.version }}/bin/start.sh
    - runas: {{ hazelcast.user }}
    
{% endif %}