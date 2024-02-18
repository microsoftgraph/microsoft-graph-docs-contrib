---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.managed_device_mobile_app_configuration_user_status import ManagedDeviceMobileAppConfigurationUserStatus

graph_client = GraphServiceClient(credentials, scopes)

request_body = ManagedDeviceMobileAppConfigurationUserStatus(
	odata_type = "#microsoft.graph.managedDeviceMobileAppConfigurationUserStatus",
	user_display_name = "User Display Name value",
	devices_count = 12,
	status = ComplianceStatus.NotApplicable,
	last_reported_date_time = "2017-01-01T00:00:17.7769392-08:00",
	user_principal_name = "User Principal Name value",
)

result = await graph_client.device_app_management.mobile_app_configurations.by_managed_device_mobile_app_configuration_id('managedDeviceMobileAppConfiguration-id').user_statuses.post(request_body)


```