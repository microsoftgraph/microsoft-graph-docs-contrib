---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = PrivilegedAccessGroupAssignmentScheduleRequest(
	access_id = PrivilegedAccessGroupRelationships.Member,
	principal_id = "3cce9d87-3986-4f19-8335-7ed075408ca2",
	group_id = "68e55cce-cf7e-4a2d-9046-3e4e75c4bfa7",
	action = ScheduleRequestActions.AdminAssign,
	schedule_info = RequestSchedule(
		start_date_time = "2022-12-08T07:43:00.000Z",
		expiration = ExpirationPattern(
			type = ExpirationPatternType.AfterDuration,
			duration = "PT2H",
		),
	),
	justification = "Assign active member access.",
)

result = await graph_client.identity_governance.privileged_access.group.assignment_schedule_requests.post(request_body)


```