---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.deviceappmanagement.mobileappconfigurations.item.assign.assign_post_request_body import AssignPostRequestBody
from msgraph.generated.models.managed_device_mobile_app_configuration_assignment import ManagedDeviceMobileAppConfigurationAssignment
from msgraph.generated.models.all_licensed_users_assignment_target import AllLicensedUsersAssignmentTarget
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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