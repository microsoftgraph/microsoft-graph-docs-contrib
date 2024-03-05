---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.mobile_app_assignment import MobileAppAssignment
from msgraph.generated.models.all_licensed_users_assignment_target import AllLicensedUsersAssignmentTarget
from msgraph.generated.models.windows_universal_app_x_app_assignment_settings import WindowsUniversalAppXAppAssignmentSettings

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