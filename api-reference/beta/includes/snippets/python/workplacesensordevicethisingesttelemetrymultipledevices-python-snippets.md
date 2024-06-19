---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.workplace.sensordevices.ingest_telemetry.ingest_telemetry_post_request_body import IngestTelemetryPostRequestBody
from msgraph_beta.generated.models.workplace_sensor_device_telemetry import WorkplaceSensorDeviceTelemetry
from msgraph_beta.generated.models.workplace_sensor_type import WorkplaceSensorType

graph_client = GraphServiceClient(credentials, scopes)

request_body = IngestTelemetryPostRequestBody(
	telemetry = [
		WorkplaceSensorDeviceTelemetry(
			device_id = "contoso_9D6816",
			sensor_type = WorkplaceSensorType.Occupancy,
			bool_value = False,
			timestamp = "2021-03-31T09:36:05.144Z",
		),
		WorkplaceSensorDeviceTelemetry(
			device_id = "contoso_9D6817",
			sensor_type = WorkplaceSensorType.Occupancy,
			bool_value = False,
			timestamp = "2021-03-31T09:36:05.144Z",
		),
	],
)

await graph_client.workplace.sensor_devices.ingest_telemetry.post(request_body)


```