---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.managed_device_mobile_app_configuration_assignment import ManagedDeviceMobileAppConfigurationAssignment
from msgraph.generated.models.all_licensed_users_assignment_target import AllLicensedUsersAssignmentTarget

graph_client = GraphServiceClient(credentials, scopes)

request_body = ManagedDeviceMobileAppConfigurationAssignment(
	odata_type = "#microsoft.graph.managedDeviceMobileAppConfigurationAssignment",
	target = AllLicensedUsersAssignmentTarget(
		odata_type = "microsoft.graph.allLicensedUsersAssignmentTarget",
	),
)

result = await graph_client.device_app_management.mobile_app_configurations.by_managed_device_mobile_app_configuration_id('managedDeviceMobileAppConfiguration-id').assignments.by_managed_device_mobile_app_configuration_assignment_id('managedDeviceMobileAppConfigurationAssignment-id').patch(request_body)


```