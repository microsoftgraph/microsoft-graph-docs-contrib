---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.workplace_sensor_device import WorkplaceSensorDevice
from msgraph_beta.generated.models.workplace_sensor import WorkplaceSensor
from msgraph_beta.generated.models.workplace_sensor_type import WorkplaceSensorType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = WorkplaceSensorDevice(
	device_id = "contoso_9D6816",
	display_name = "Contoso 9D6816 Device",
	description = "Contoso 9D6816 Device",
	mac_address = "00:0A:95:9D:68:16",
	manufacturer = "Contoso",
	ip_v4_address = "192.168.1.100",
	ip_v6_address = "2001:db8::ff00:42:8329",
	place_id = "acfa3bc0-2b83-425b-8910-84a0250e9671",
	tags = [
		"Building A",
		"Floor 3",
		"Room 301",
		"Conference Room",
		"v1.0.7",
	],
	sensors = [
		WorkplaceSensor(
			sensor_type = WorkplaceSensorType.Occupancy,
		),
		WorkplaceSensor(
			sensor_type = WorkplaceSensorType.PeopleCount,
		),
	],
)

result = await graph_client.workplace.sensor_devices.by_workplace_sensor_device_id('workplaceSensorDevice-id').patch(request_body)


```