---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.device_install_state import DeviceInstallState
from msgraph.generated.models.install_state import InstallState
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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