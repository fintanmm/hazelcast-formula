import testinfra


def test_is_hazelcast_downloaded(host):
    hazelcast = host.file('/opt/hazelcast-3.8.2')
    assert hazelcast.is_directory
