---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.identity_governance.privileged_access.group.assignment_schedule_requests.by_privileged_access_group_assignment_schedule_request_id('privilegedAccessGroupAssignmentScheduleRequest-id').cancel.post()


```