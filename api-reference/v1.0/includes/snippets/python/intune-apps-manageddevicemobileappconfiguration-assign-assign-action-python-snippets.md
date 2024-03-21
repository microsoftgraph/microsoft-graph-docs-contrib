---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.assign_post_request_body import AssignPostRequestBody
from msgraph.generated.models.managed_device_mobile_app_configuration_assignment import ManagedDeviceMobileAppConfigurationAssignment
from msgraph.generated.models.all_licensed_users_assignment_target import AllLicensedUsersAssignmentTarget

graph_client = GraphServiceClient(credentials, scopes)

request_body = AssignPostRequestBody(
	assignments = [
		ManagedDeviceMobileAppConfigurationAssignment(
			odata_type = "#microsoft.graph.managedDeviceMobileAppConfigurationAssignment",
			id = "4df81c9c-1c9c-4df8-9c1c-f84d9c1cf84d",
			target = AllLicensedUsersAssignmentTarget(
				odata_type = "microsoft.graph.allLicensedUsersAssignmentTarget",
			),
		),
	],
)

await graph_client.device_app_management.mobile_app_configurations.by_managed_device_mobile_app_configuration_id('managedDeviceMobileAppConfiguration-id').assign.post(request_body)


```