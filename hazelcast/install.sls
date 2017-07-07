# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "hazelcast/map.jinja" import hazelcast with context %}

extract_hazelcast:
  archive.extracted:
    - name: {{ hazelcast.home }}/hazelcast-{{ hazelcast.version }}
    - source: {{ hazelcast.pkg_url }}
    - source_hash: {{ hazelcast.hash }}
    - user: {{ hazelcast.user }}
    - group: {{ hazelcast.group }}
    - if_missing: {{ hazelcast.home }}/hazelcast-{{ hazelcast.version }}