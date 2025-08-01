---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.privileged_access_group_eligibility_schedule_request import PrivilegedAccessGroupEligibilityScheduleRequest
from msgraph_beta.generated.models.privileged_access_group_relationships import PrivilegedAccessGroupRelationships
from msgraph_beta.generated.models.schedule_request_actions import ScheduleRequestActions
from msgraph_beta.generated.models.request_schedule import RequestSchedule
from msgraph_beta.generated.models.expiration_pattern import ExpirationPattern
from msgraph_beta.generated.models.expiration_pattern_type import ExpirationPatternType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PrivilegedAccessGroupEligibilityScheduleRequest(
	access_id = PrivilegedAccessGroupRelationships.Member,
	principal_id = "3cce9d87-3986-4f19-8335-7ed075408ca2",
	group_id = "2b5ed229-4072-478d-9504-a047ebd4b07d",
	action = ScheduleRequestActions.AdminExtend,
	schedule_info = RequestSchedule(
		start_date_time = "2023-02-06T19:25:00.000Z",
		expiration = ExpirationPattern(
			type = ExpirationPatternType.AfterDateTime,
			end_date_time = "2023-02-07T20:56:00.000Z",
		),
	),
	justification = "Extend eligible request.",
)

result = await graph_client.identity_governance.privileged_access.group.eligibility_schedule_requests.post(request_body)


```