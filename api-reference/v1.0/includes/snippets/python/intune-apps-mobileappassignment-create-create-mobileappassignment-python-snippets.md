---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = MobileAppAssignment(
	odata_type = "#microsoft.graph.mobileAppAssignment",
	intent = InstallIntent.Required,
	target = AllLicensedUsersAssignmentTarget(
		odata_type = "microsoft.graph.allLicensedUsersAssignmentTarget",
	),
	settings = WindowsUniversalAppXAppAssignmentSettings(
		odata_type = "microsoft.graph.windowsUniversalAppXAppAssignmentSettings",
		use_device_context = True,
	),
)

result = await graph_client.device_app_management.mobile_apps.by_mobile_app_id('mobileApp-id').assignments.post(request_body)


```