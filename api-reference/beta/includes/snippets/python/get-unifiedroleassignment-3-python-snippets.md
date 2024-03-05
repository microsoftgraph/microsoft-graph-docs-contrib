---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.role_management.exchange.role_assignments.by_unified_role_assignment_id('unifiedRoleAssignment-id').get()


```