---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnifiedRoleManagementAlert()
request_body.is_active = False




result = await client.identity_governance.role_management_alerts.alerts.by_alert_id('unifiedRoleManagementAlert-id').patch(request_body = request_body)


```