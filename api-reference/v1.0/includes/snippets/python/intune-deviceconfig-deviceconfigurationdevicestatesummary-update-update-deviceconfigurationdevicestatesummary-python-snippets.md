---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.device_configuration_device_state_summary import DeviceConfigurationDeviceStateSummary

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceConfigurationDeviceStateSummary(
	odata_type = "#microsoft.graph.deviceConfigurationDeviceStateSummary",
	unknown_device_count = 2,
	not_applicable_device_count = 8,
	compliant_device_count = 4,
	remediated_device_count = 5,
	non_compliant_device_count = 7,
	error_device_count = 0,
	conflict_device_count = 3,
)

result = await graph_client.device_management.device_configuration_device_state_summaries.patch(request_body)


```