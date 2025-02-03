---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.windows_information_protection_app_locker_file import WindowsInformationProtectionAppLockerFile
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = WindowsInformationProtectionAppLockerFile(
	odata_type = "#microsoft.graph.windowsInformationProtectionAppLockerFile",
	display_name = "Display Name value",
	file_hash = "File Hash value",
	file = base64.urlsafe_b64decode("ZmlsZQ=="),
	version = "Version value",
)

result = await graph_client.device_app_management.windows_information_protection_policies.by_windows_information_protection_policy_id('windowsInformationProtectionPolicy-id').exempt_app_locker_files.post(request_body)


```