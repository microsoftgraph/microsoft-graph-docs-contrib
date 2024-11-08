---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.unified_role_eligibility_schedule_request import UnifiedRoleEligibilityScheduleRequest
from msgraph_beta.generated.models.request_schedule import RequestSchedule
from msgraph_beta.generated.models.expiration_pattern import ExpirationPattern
from msgraph_beta.generated.models.expiration_pattern_type import ExpirationPatternType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UnifiedRoleEligibilityScheduleRequest(
	action = "AdminAssign",
	justification = "Assign User Admin eligibility to IT Helpdesk (User) group",
	role_definition_id = "fdd7a751-b60b-444a-984c-02652fe8fa1c",
	directory_scope_id = "/",
	principal_id = "07706ff1-46c7-4847-ae33-3003830675a1",
	schedule_info = RequestSchedule(
		start_date_time = "2021-07-01T00:00:00Z",
		expiration = ExpirationPattern(
			end_date_time = "2022-06-30T00:00:00Z",
			type = ExpirationPatternType.AfterDateTime,
		),
	),
)

result = await graph_client.role_management.directory.role_eligibility_schedule_requests.post(request_body)


```