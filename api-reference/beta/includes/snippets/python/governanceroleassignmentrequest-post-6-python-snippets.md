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
	role_definition_id = "0e88fd18-50f5-4ee1-9104-01c3ed910065",
	resource_id = "e5e7d29d-5465-45ac-885f-4716a5ee74b5",
	subject_id = "74765671-9ca4-40d7-9e36-2f4a570608a6",
	assignment_state = "Eligible",
	type = "AdminExtend",
	reason = "extend role assignment",
	schedule = GovernanceSchedule(
		type = "Once",
		start_date_time = "2018-05-12T23:53:55.327Z",
		end_date_time = "2018-08-10T23:53:55.327Z",
	),
)

result = await graph_client.privileged_access.by_privileged_access_id('privilegedAccess-id').role_assignment_requests.post(request_body)


```