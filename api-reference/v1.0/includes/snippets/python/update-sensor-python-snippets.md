---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.security.sensor import Sensor
from msgraph.generated.models.security.sensor_settings import SensorSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Sensor(
	settings = SensorSettings(
		description = "dc1 settings new description",
		domain_controller_dns_names = [
			"DC1.domain1.test.local",
		],
		is_delayed_deployment_enabled = False,
	),
)

result = await graph_client.security.identities.sensors.by_sensor_id('sensor-id').patch(request_body)


```