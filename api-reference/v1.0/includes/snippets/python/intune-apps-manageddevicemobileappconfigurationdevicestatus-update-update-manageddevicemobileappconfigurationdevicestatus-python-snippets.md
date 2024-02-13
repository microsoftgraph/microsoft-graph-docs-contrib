---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.managed_device_mobile_app_configuration_device_status import ManagedDeviceMobileAppConfigurationDeviceStatus

graph_client = GraphServiceClient(credentials, scopes)

request_body = ManagedDeviceMobileAppConfigurationDeviceStatus(
	odata_type = "#microsoft.graph.managedDeviceMobileAppConfigurationDeviceStatus",
	device_display_name = "Device Display Name value",
	user_name = "User Name value",
	device_model = "Device Model value",
	compliance_grace_period_expiration_date_time = "2016-12-31T23:56:44.951111-08:00",
	status = ComplianceStatus.NotApplicable,
	last_reported_date_time = "2017-01-01T00:00:17.7769392-08:00",
	user_principal_name = "User Principal Name value",
)

result = await graph_client.device_app_management.mobile_app_configurations.by_managed_device_mobile_app_configuration_id('managedDeviceMobileAppConfiguration-id').device_statuses.by_managed_device_mobile_app_configuration_device_status_id('managedDeviceMobileAppConfigurationDeviceStatus-id').patch(request_body)


```