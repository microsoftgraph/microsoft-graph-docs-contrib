---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.device_configuration_user_overview import DeviceConfigurationUserOverview
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DeviceConfigurationUserOverview(
	odata_type = "#microsoft.graph.deviceConfigurationUserOverview",
	pending_count = 12,
	not_applicable_count = 2,
	success_count = 12,
	error_count = 10,
	failed_count = 11,
	last_update_date_time = "2016-12-31T23:58:21.6459442-08:00",
	configuration_version = 4,
)

result = await graph_client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').user_status_overview.patch(request_body)


```