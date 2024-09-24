---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.privileged_access_group_assignment_schedule_request import PrivilegedAccessGroupAssignmentScheduleRequest
from msgraph.generated.models.privileged_access_group_relationships import PrivilegedAccessGroupRelationships
from msgraph.generated.models.schedule_request_actions import ScheduleRequestActions
from msgraph.generated.models.request_schedule import RequestSchedule
from msgraph.generated.models.expiration_pattern import ExpirationPattern
from msgraph.generated.models.expiration_pattern_type import ExpirationPatternType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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