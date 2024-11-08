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
	role_definition_id = "70521f3e-3b95-4e51-b4d2-a2f485b02103",
	resource_id = "e5e7d29d-5465-45ac-885f-4716a5ee74b5",
	subject_id = "1566d11d-d2b6-444a-a8de-28698682c445",
	assignment_state = "Eligible",
	type = "AdminUpdate",
	schedule = GovernanceSchedule(
		type = "Once",
		start_date_time = "2018-03-08T05:42:45.317Z",
		end_date_time = "2018-06-05T05:42:31.000Z",
	),
)

result = await graph_client.privileged_access.by_privileged_access_id('privilegedAccess-id').role_assignment_requests.post(request_body)


```