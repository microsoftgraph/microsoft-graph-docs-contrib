---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.privileged_access_group_assignment_schedule_request import PrivilegedAccessGroupAssignmentScheduleRequest
from msgraph.generated.models.request_schedule import RequestSchedule
from msgraph.generated.models.expiration_pattern import ExpirationPattern

graph_client = GraphServiceClient(credentials, scopes)

request_body = PrivilegedAccessGroupAssignmentScheduleRequest(
	access_id = PrivilegedAccessGroupRelationships.Member,
	principal_id = "3cce9d87-3986-4f19-8335-7ed075408ca2",
	group_id = "2b5ed229-4072-478d-9504-a047ebd4b07d",
	action = ScheduleRequestActions.SelfActivate,
	schedule_info = RequestSchedule(
		start_date_time = "2023-02-08T07:43:00.000Z",
		expiration = ExpirationPattern(
			type = ExpirationPatternType.AfterDuration,
			duration = "PT2H",
		),
	),
	justification = "Activate assignment.",
)

result = await graph_client.identity_governance.privileged_access.group.assignment_schedule_requests.post(request_body)


```