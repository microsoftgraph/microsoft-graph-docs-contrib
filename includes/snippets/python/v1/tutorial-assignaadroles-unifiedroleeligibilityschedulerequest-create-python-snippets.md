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
	justification = "Assign User Admin eligibility to IT Helpdesk (User) group",
	role_definition_id = "fe930be7-5e62-47db-91af-98c3a49a38b1",
	directory_scope_id = "/",
	principal_id = "1189bbdd-1268-4a72-8c6d-6fe77d28f2e3",
	schedule_info = RequestSchedule(
		start_date_time = "2025-03-21T11:06:00Z",
		expiration = ExpirationPattern(
			end_date_time = "2026-03-21T00:00:00Z",
			type = ExpirationPatternType.AfterDateTime,
		),
	),
)

result = await graph_client.role_management.directory.role_eligibility_schedule_requests.post(request_body)


```