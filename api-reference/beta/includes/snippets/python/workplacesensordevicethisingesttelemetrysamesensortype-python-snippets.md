---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.workplace.sensordevices.ingest_telemetry.ingest_telemetry_post_request_body import IngestTelemetryPostRequestBody
from msgraph_beta.generated.models.workplace_sensor_device_telemetry import WorkplaceSensorDeviceTelemetry
from msgraph_beta.generated.models.workplace_sensor_type import WorkplaceSensorType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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