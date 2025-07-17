---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.unified_role_eligibility_schedule_request import UnifiedRoleEligibilityScheduleRequest
from msgraph.generated.models.unified_role_schedule_request_actions import UnifiedRoleScheduleRequestActions
from msgraph.generated.models.request_schedule import RequestSchedule
from msgraph.generated.models.expiration_pattern import ExpirationPattern
from msgraph.generated.models.expiration_pattern_type import ExpirationPatternType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UnifiedRoleEligibilityScheduleRequest(
	action = UnifiedRoleScheduleRequestActions.AdminAssign,
	justification = "Assign Attribute Assignment Admin eligibility to restricted user",
	role_definition_id = "8424c6f0-a189-499e-bbd0-26c1753c96d4",
	directory_scope_id = "/",
	principal_id = "071cc716-8147-4397-a5ba-b2105951cc0b",
	schedule_info = RequestSchedule(
		start_date_time = "2022-04-10T00:00:00Z",
		expiration = ExpirationPattern(
			type = ExpirationPatternType.AfterDateTime,
			end_date_time = "2024-04-10T00:00:00Z",
		),
	),
)

result = await graph_client.role_management.directory.role_eligibility_schedule_requests.post(request_body)


```