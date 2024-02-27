---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.governance_role_assignment_request import GovernanceRoleAssignmentRequest

graph_client = GraphServiceClient(credentials, scopes)

request_body = GovernanceRoleAssignmentRequest(
	role_definition_id = "65bb4622-61f5-4f25-9d75-d0e20cf92019",
	resource_id = "e5e7d29d-5465-45ac-885f-4716a5ee74b5",
	subject_id = "74765671-9ca4-40d7-9e36-2f4a570608a6",
	assignment_state = "Eligible",
	type = "AdminRemove",
)

result = await graph_client.privileged_access.by_privileged_access_id('privilegedAccess-id').role_assignment_requests.post(request_body)


```