---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.identity_governance.role_management_alerts.alerts.by_unified_role_management_alert_id('unifiedRoleManagementAlert-id').alert_incidents.by_unified_role_management_alert_incident_id('unifiedRoleManagementAlertIncident-id').get()


```