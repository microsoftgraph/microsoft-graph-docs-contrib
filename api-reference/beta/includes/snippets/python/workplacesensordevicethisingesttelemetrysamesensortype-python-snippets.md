---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.ingest_telemetry_post_request_body import IngestTelemetryPostRequestBody
from msgraph.generated.models.workplace_sensor_device_telemetry import WorkplaceSensorDeviceTelemetry

graph_client = GraphServiceClient(credentials, scopes)

request_body = IngestTelemetryPostRequestBody(
	telemetry = [
		WorkplaceSensorDeviceTelemetry(
			device_id = "contoso_9D6816",
			sensor_id = "occupancy_1",
			sensor_type = WorkplaceSensorType.Occupancy,
			bool_value = False,
			timestamp = "2021-03-31T09:36:05.144Z",
		),
		WorkplaceSensorDeviceTelemetry(
			device_id = "contoso_9D6816",
			sensor_id = "occupancy_2",
			sensor_type = WorkplaceSensorType.Occupancy,
			bool_value = False,
			timestamp = "2021-03-31T09:36:05.144Z",
		),
	],
)

await graph_client.workplace.sensor_devices.ingest_telemetry.post(request_body)


```