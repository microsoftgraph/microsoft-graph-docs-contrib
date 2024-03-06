---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.privileged_access.by_privileged_access_id('privilegedAccess-id').role_assignment_requests.by_governance_role_assignment_request_id('governanceRoleAssignmentRequest-id').update_request.post(None)


```