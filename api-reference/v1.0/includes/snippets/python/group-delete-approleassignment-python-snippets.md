---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.groups.by_group_id('group-id').app_role_assignments.by_app_role_assignment_id('appRoleAssignment-id').delete()


```