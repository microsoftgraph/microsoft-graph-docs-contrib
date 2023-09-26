---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = UnifiedRoleManagementAlert(
	is_active = False,
)

result = await graph_client.identity_governance.role_management_alerts.alerts.by_alert_id('unifiedRoleManagementAlert-id').patch(body = request_body)


```