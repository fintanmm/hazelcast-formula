import testinfra


def test_is_hazelcast_downloaded(host):
    hazelcast = host.file('/opt/hazelcast-3.8.2')
    assert hazelcast.is_directory

def test_config_file(host):
    hazelcast = host.file("/opt/hazelcast-3.8.2/hazelcast.conf")
    assert hazelcast.contains("5701")
    assert hazelcast.contains("NQmdgfeYYq1FfSQWR6")

