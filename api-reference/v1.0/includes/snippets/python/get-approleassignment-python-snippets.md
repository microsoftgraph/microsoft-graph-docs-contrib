---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.me.app_role_assignments.by_app_role_assignment_id('appRoleAssignment-id').get()


```