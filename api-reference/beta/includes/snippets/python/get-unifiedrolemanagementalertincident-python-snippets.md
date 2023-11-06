---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.identity_governance.role_management_alerts.alerts.by_unified_role_management_alert_id('unifiedRoleManagementAlert-id').alert_incidents.by_unified_role_management_alert_incident_id('unifiedRoleManagementAlertIncident-id').get()


```