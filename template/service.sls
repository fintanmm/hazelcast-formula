# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "hazelcast/map.jinja" import hazelcast with context %}

hazelcast-name:
  service.running:
    - name: {{ hazelcast.service.name }}
    - enable: True
