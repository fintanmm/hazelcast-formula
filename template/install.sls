# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "hazelcast/map.jinja" import hazelcast with context %}

hazelcast-pkg:
  pkg.installed:
    - name: {{ hazelcast.pkg }}
