---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = UnifiedRoleEligibilityScheduleRequest(
	action = UnifiedRoleScheduleRequestActions.AdminAssign,
	justification = "Assign User Admin eligibility to IT Helpdesk (User) group",
	role_definition_id = "fe930be7-5e62-47db-91af-98c3a49a38b1",
	directory_scope_id = "/",
	principal_id = "e77cbb23-0ff2-4e18-819c-690f58269752",
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