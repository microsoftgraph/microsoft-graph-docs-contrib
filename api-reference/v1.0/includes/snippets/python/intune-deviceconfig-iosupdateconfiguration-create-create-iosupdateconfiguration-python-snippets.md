---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.ios_update_configuration import IosUpdateConfiguration
from msgraph.generated.models.day_of_week import DayOfWeek
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = IosUpdateConfiguration(
	odata_type = "#microsoft.graph.iosUpdateConfiguration",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	active_hours_start = "12:00:05.5020000",
	active_hours_end = "11:59:00.8990000",
	scheduled_install_days = [
		DayOfWeek.Monday,
	],
	utc_time_offset_in_minutes = 6,
)

result = await graph_client.device_management.device_configurations.post(request_body)


```