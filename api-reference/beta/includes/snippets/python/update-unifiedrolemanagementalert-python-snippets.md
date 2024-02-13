---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.unified_role_management_alert import UnifiedRoleManagementAlert

graph_client = GraphServiceClient(credentials, scopes)

request_body = UnifiedRoleManagementAlert(
	is_active = False,
)

result = await graph_client.identity_governance.role_management_alerts.alerts.by_unified_role_management_alert_id('unifiedRoleManagementAlert-id').patch(request_body)


```