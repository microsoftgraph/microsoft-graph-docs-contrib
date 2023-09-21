---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = WindowsInformationProtectionAppLockerFile(
	odata_type = "#microsoft.graph.windowsInformationProtectionAppLockerFile",
	display_name = "Display Name value",
	file_hash = "File Hash value",
	file = base64.urlsafe_b64decode("ZmlsZQ=="),
	version = "Version value",
)

result = await graph_client.device_app_management.window_information_protection_policies.by_window_information_protection_policie_id('windowsInformationProtectionPolicy-id').exempt_app_locker_files.by_exempt_app_locker_file_id('windowsInformationProtectionAppLockerFile-id').patch(body = request_body)


```