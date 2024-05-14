---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.workplace_sensor_device import WorkplaceSensorDevice
from msgraph.generated.models.workplace_sensor import WorkplaceSensor

graph_client = GraphServiceClient(credentials, scopes)

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

result = await graph_client.workplace.sensor_devices.post(request_body)


```