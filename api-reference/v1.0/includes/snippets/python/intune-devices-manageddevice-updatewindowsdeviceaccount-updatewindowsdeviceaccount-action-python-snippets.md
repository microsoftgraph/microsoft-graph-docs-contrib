---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.manageddevices.item.update_windows_device_account.update_windows_device_account_post_request_body import UpdateWindowsDeviceAccountPostRequestBody
from msgraph.generated.models.update_windows_device_account_action_parameter import UpdateWindowsDeviceAccountActionParameter
from msgraph.generated.models.windows_device_account import WindowsDeviceAccount

graph_client = GraphServiceClient(credentials, scopes)

request_body = UpdateWindowsDeviceAccountPostRequestBody(
	update_windows_device_account_action_parameter = UpdateWindowsDeviceAccountActionParameter(
		odata_type = "microsoft.graph.updateWindowsDeviceAccountActionParameter",
		device_account = WindowsDeviceAccount(
			odata_type = "microsoft.graph.windowsDeviceAccount",
			password = "Password value",
		),
		password_rotation_enabled = True,
		calendar_sync_enabled = True,
		device_account_email = "Device Account Email value",
		exchange_server = "Exchange Server value",
		session_initiation_protocal_address = "Session Initiation Protocal Address value",
	),
)

await graph_client.device_management.managed_devices.by_managed_device_id('managedDevice-id').update_windows_device_account.post(request_body)


```