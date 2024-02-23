---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.windows_autopilot_device_identity import WindowsAutopilotDeviceIdentity

graph_client = GraphServiceClient(credentials, scopes)

request_body = WindowsAutopilotDeviceIdentity(
	odata_type = "#microsoft.graph.windowsAutopilotDeviceIdentity",
	group_tag = "Group Tag value",
	purchase_order_identifier = "Purchase Order Identifier value",
	serial_number = "Serial Number value",
	product_key = "Product Key value",
	manufacturer = "Manufacturer value",
	model = "Model value",
	enrollment_state = EnrollmentState.Enrolled,
	last_contacted_date_time = "2016-12-31T23:58:44.2908994-08:00",
	addressable_user_name = "Addressable User Name value",
	user_principal_name = "User Principal Name value",
	resource_name = "Resource Name value",
	sku_number = "Sku Number value",
	system_family = "System Family value",
	azure_active_directory_device_id = "Azure Active Directory Device Id value",
	managed_device_id = "Managed Device Id value",
	display_name = "Display Name value",
)

result = await graph_client.device_management.windows_autopilot_device_identities.post(request_body)


```