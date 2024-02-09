---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.unified_role_eligibility_schedule_request import UnifiedRoleEligibilityScheduleRequest
from msgraph.generated.models.request_schedule import RequestSchedule
from msgraph.generated.models.expiration_pattern import ExpirationPattern

graph_client = GraphServiceClient(credentials, scopes)

request_body = UnifiedRoleEligibilityScheduleRequest(
	action = "AdminRemove",
	justification = "Assign User Admin eligibility to IT Helpdesk (User) group",
	role_definition_id = "fdd7a751-b60b-444a-984c-02652fe8fa1c",
	directory_scope_id = "/",
	principal_id = "07706ff1-46c7-4847-ae33-3003830675a1",
	schedule_info = RequestSchedule(
		start_date_time = "2021-07-26T18:08:06.2081758Z",
		expiration = ExpirationPattern(
			end_date_time = "2022-06-30T00:00:00Z",
			type = ExpirationPatternType.AfterDateTime,
		),
	),
)

result = await graph_client.role_management.directory.role_eligibility_schedule_requests.post(request_body)


```