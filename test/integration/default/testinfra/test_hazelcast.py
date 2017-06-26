import testinfra


def test_service_is_running_and_enabled(Service):
    hazelcast = Service('hazelcast')
    assert hazelcast.is_running
    assert hazelcast.is_enabled