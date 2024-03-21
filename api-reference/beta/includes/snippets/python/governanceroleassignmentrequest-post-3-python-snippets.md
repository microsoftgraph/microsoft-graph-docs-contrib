---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.governance_role_assignment_request import GovernanceRoleAssignmentRequest

graph_client = GraphServiceClient(credentials, scopes)

request_body = GovernanceRoleAssignmentRequest(
	role_definition_id = "bc75b4e6-7403-4243-bf2f-d1f6990be122",
	resource_id = "fb016e3a-c3ed-4d9d-96b6-a54cd4f0b735",
	subject_id = "918e54be-12c4-4f4c-a6d3-2ee0e3661c51",
	assignment_state = "Active",
	type = "UserRemove",
	reason = "Deactivate the role",
	linked_eligible_role_assignment_id = "cb8a533e-02d5-42ad-8499-916b1e4822ec",
)

result = await graph_client.privileged_access.by_privileged_access_id('privilegedAccess-id').role_assignment_requests.post(request_body)


```