---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ManagedDeviceMobileAppConfigurationAssignment(
	odata_type = "#microsoft.graph.managedDeviceMobileAppConfigurationAssignment",
	target = AllLicensedUsersAssignmentTarget(
		odata_type = "microsoft.graph.allLicensedUsersAssignmentTarget",
	),
)

result = await graph_client.device_app_management.mobile_app_configurations.by_mobile_app_configuration_id('managedDeviceMobileAppConfiguration-id').assignments.by_assignment_id('managedDeviceMobileAppConfigurationAssignment-id').patch(body = request_body)


```