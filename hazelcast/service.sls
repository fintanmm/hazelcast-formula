# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "hazelcast/map.jinja" import hazelcast with context %}

hazelcast_server:
  supervisord.running:
    - watch:
      - file: {{ hazelcast.home }}/hazelcast-{{ hazelcast.version }}/bin/hazelcast.xml  
