---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TooManyGlobalAdminsAssignedToTenantAlertConfiguration()
request_body.@odata_type = '#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration'

request_body.is_enabled = True

request_body.GlobalAdminCountThreshold = 7

request_body.PercentageOfGlobalAdminsOutOfRolesThreshold = 70




result = await client.identity_governance.role_management_alerts.alert_configurations.by_alert_configuration_id('unifiedRoleManagementAlertConfiguration-id').patch(request_body = request_body)


```