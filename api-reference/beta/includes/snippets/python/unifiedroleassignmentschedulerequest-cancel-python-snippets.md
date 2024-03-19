---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.role_management.directory.role_assignment_schedule_requests.by_unified_role_assignment_schedule_request_id('unifiedRoleAssignmentScheduleRequest-id').cancel.post()


```