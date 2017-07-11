# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "hazelcast/map.jinja" import hazelcast with context %}

{{ hazelcast.group }}_group:
  group.present:
    - name: {{ hazelcast.group }}
    - gid: 7648
    - system: True

{{ hazelcast.user }}_user:
  user.present:
    - name: {{ hazelcast.user }}
    - fullname: Hazelcast user
    - shell: /bin/bash
    - home: {{ hazelcast.home }}
    - uid: 4000
    - gid: 4000
    - groups:
      - {{ hazelcast.group }}

extract_hazelcast:
  archive.extracted:
    - name: {{ hazelcast.home }}/hazelcast-{{ hazelcast.version }}
    - source: {{ hazelcast.pkg_url }}
    - source_hash: {{ hazelcast.pkg_hash }}
    - archive_format: tar
    - user: {{ hazelcast.user }}
    - group: {{ hazelcast.group }}
    - if_missing: {{ hazelcast.home }}/hazelcast-{{ hazelcast.version }}