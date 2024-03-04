---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.governance_role_assignment_request import GovernanceRoleAssignmentRequest
from msgraph.generated.models.governance_schedule import GovernanceSchedule

graph_client = GraphServiceClient(credentials, scopes)

request_body = GovernanceRoleAssignmentRequest(
	role_definition_id = "8b4d1d51-08e9-4254-b0a6-b16177aae376",
	resource_id = "e5e7d29d-5465-45ac-885f-4716a5ee74b5",
	subject_id = "918e54be-12c4-4f4c-a6d3-2ee0e3661c51",
	assignment_state = "Active",
	type = "UserAdd",
	reason = "Activate the owner role",
	schedule = GovernanceSchedule(
		type = "Once",
		start_date_time = "2018-05-12T23:28:43.537Z",
		duration = "PT9H",
	),
	linked_eligible_role_assignment_id = "e327f4be-42a0-47a2-8579-0a39b025b394",
)

result = await graph_client.privileged_access.by_privileged_access_id('privilegedAccess-id').role_assignment_requests.post(request_body)


```