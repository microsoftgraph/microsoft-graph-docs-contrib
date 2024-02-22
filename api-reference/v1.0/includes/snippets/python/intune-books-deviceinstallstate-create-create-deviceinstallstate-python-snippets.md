---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.device_install_state import DeviceInstallState

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceInstallState(
	odata_type = "#microsoft.graph.deviceInstallState",
	device_name = "Device Name value",
	device_id = "Device Id value",
	last_sync_date_time = "2017-01-01T00:02:49.3205976-08:00",
	install_state = InstallState.Installed,
	error_code = "Error Code value",
	os_version = "Os Version value",
	os_description = "Os Description value",
	user_name = "User Name value",
)

result = await graph_client.device_app_management.managed_e_books.by_managed_e_book_id('managedEBook-id').device_states.post(request_body)


```