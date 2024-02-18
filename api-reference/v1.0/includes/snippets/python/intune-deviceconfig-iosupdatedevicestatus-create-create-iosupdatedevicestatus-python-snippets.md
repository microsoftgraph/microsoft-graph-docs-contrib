---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.ios_update_device_status import IosUpdateDeviceStatus

graph_client = GraphServiceClient(credentials, scopes)

request_body = IosUpdateDeviceStatus(
	odata_type = "#microsoft.graph.iosUpdateDeviceStatus",
	install_status = IosUpdatesInstallStatus.Available,
	os_version = "Os Version value",
	device_id = "Device Id value",
	user_id = "User Id value",
	device_display_name = "Device Display Name value",
	user_name = "User Name value",
	device_model = "Device Model value",
	compliance_grace_period_expiration_date_time = "2016-12-31T23:56:44.951111-08:00",
	status = ComplianceStatus.NotApplicable,
	last_reported_date_time = "2017-01-01T00:00:17.7769392-08:00",
	user_principal_name = "User Principal Name value",
)

result = await graph_client.device_management.ios_update_statuses.post(request_body)


```