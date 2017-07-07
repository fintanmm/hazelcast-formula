# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "hazelcast/map.jinja" import hazelcast with context %}

{{ hazelcast.home }}/hazelcast-{{ hazelcast.version }}/bin/hazelcast.xml:
  file.managed:
    - source: salt://hazelcast/files/hazelcast.xml
    - mode: 644
    - user: root
    - group: root
    - defaults:
        name: {{ hazelcast.name }}
        password: {{ hazelcast.password }}
        management_url: {{ hazelcast.management_url }}
        port: {{ hazelcast.port }}

