---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.governance_role_assignment_request import GovernanceRoleAssignmentRequest
from msgraph_beta.generated.models.governance_schedule import GovernanceSchedule
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GovernanceRoleAssignmentRequest(
	role_definition_id = "ea48ad5e-e3b0-4d10-af54-39a45bbfe68d",
	resource_id = "e5e7d29d-5465-45ac-885f-4716a5ee74b5",
	subject_id = "918e54be-12c4-4f4c-a6d3-2ee0e3661c51",
	assignment_state = "Eligible",
	type = "AdminAdd",
	reason = "Assign an eligible role",
	schedule = GovernanceSchedule(
		start_date_time = "2018-05-12T23:37:43.356Z",
		end_date_time = "2018-11-08T23:37:43.356Z",
		type = "Once",
	),
)

result = await graph_client.privileged_access.by_privileged_access_id('privilegedAccess-id').role_assignment_requests.post(request_body)


```