---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.role_management.directory.role_assignment_schedules.by_unified_role_assignment_schedule_id('unifiedRoleAssignmentSchedule-id').get()


```