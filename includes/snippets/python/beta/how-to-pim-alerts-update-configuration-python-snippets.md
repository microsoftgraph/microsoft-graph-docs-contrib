---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = TooManyGlobalAdminsAssignedToTenantAlertConfiguration(
	odata_type = "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration",
	is_enabled = True,
	global_admin_count_threshold = 4,
	percentage_of_global_admins_out_of_roles_threshold = 10,
)

result = await graph_client.identity_governance.role_management_alerts.alert_configurations.by_unified_role_management_alert_configuration_id('unifiedRoleManagementAlertConfiguration-id').patch(request_body)


```