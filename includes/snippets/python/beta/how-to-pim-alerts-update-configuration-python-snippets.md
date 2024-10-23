---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.too_many_global_admins_assigned_to_tenant_alert_configuration import TooManyGlobalAdminsAssignedToTenantAlertConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TooManyGlobalAdminsAssignedToTenantAlertConfiguration(
	odata_type = "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration",
	is_enabled = True,
	global_admin_count_threshold = 4,
	percentage_of_global_admins_out_of_roles_threshold = 10,
)

result = await graph_client.identity_governance.role_management_alerts.alert_configurations.by_unified_role_management_alert_configuration_id('unifiedRoleManagementAlertConfiguration-id').patch(request_body)


```