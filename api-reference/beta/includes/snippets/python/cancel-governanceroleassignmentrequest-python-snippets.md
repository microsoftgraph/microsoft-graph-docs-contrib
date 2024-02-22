---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.privileged_access.by_privileged_access_id('privilegedAccess-id').role_assignment_requests.by_governance_role_assignment_request_id('governanceRoleAssignmentRequest-id').cancel.post()


```