---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.identity_governance.role_management_alerts.alert_definitions.by_unified_role_management_alert_definition_id('unifiedRoleManagementAlertDefinition-id').get()


```