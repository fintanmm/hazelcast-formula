# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "hazelcast/map.jinja" import hazelcast with context %}

hazelcast-config:
  file.managed:
    - name: {{ hazelcast.config }}
    - source: salt://hazelcast/files/example.tmpl
    - mode: 644
    - user: root
    - group: root
