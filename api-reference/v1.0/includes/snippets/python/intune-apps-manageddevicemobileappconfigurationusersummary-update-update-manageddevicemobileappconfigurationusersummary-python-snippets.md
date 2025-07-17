---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.managed_device_mobile_app_configuration_user_summary import ManagedDeviceMobileAppConfigurationUserSummary
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ManagedDeviceMobileAppConfigurationUserSummary(
	odata_type = "#microsoft.graph.managedDeviceMobileAppConfigurationUserSummary",
	pending_count = 12,
	not_applicable_count = 2,
	success_count = 12,
	error_count = 10,
	failed_count = 11,
	last_update_date_time = "2016-12-31T23:58:21.6459442-08:00",
	configuration_version = 4,
)

result = await graph_client.device_app_management.mobile_app_configurations.by_managed_device_mobile_app_configuration_id('managedDeviceMobileAppConfiguration-id').user_status_summary.patch(request_body)


```