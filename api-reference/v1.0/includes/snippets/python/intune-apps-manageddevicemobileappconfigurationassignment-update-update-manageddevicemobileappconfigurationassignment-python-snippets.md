---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ManagedDeviceMobileAppConfigurationAssignment()
request_body.@odata_type = '#microsoft.graph.managedDeviceMobileAppConfigurationAssignment'

target = AllLicensedUsersAssignmentTarget()
target.@odata_type = 'microsoft.graph.allLicensedUsersAssignmentTarget'


request_body.target = target



result = await client.device_app_management.mobile_app_configurations.by_mobile_app_configuration_id('managedDeviceMobileAppConfiguration-id').assignments.by_assignment_id('managedDeviceMobileAppConfigurationAssignment-id').patch(request_body = request_body)


```