# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "hazelcast/map.jinja" import hazelcast with context %}

{{ hazelcast.home }}:
  file.managed:
    - source: {{ hazelcast.pkg_url }}
    - source_hash: {{ hazelcast.hash }}
    - user: root
    - group: root
    - mode: 644
