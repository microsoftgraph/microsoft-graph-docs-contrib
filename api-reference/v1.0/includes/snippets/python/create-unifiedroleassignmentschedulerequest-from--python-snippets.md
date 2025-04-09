---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.unified_role_assignment_schedule_request import UnifiedRoleAssignmentScheduleRequest
from msgraph.generated.models.unified_role_schedule_request_actions import UnifiedRoleScheduleRequestActions
from msgraph.generated.models.request_schedule import RequestSchedule
from msgraph.generated.models.expiration_pattern import ExpirationPattern
from msgraph.generated.models.expiration_pattern_type import ExpirationPatternType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UnifiedRoleAssignmentScheduleRequest(
	action = UnifiedRoleScheduleRequestActions.AdminAssign,
	justification = "Assign Groups Admin to IT Helpdesk group",
	role_definition_id = "fdd7a751-b60b-444a-984c-02652fe8fa1c",
	directory_scope_id = "/",
	principal_id = "071cc716-8147-4397-a5ba-b2105951cc0b",
	schedule_info = RequestSchedule(
		start_date_time = "2022-04-10T00:00:00Z",
		expiration = ExpirationPattern(
			type = ExpirationPatternType.NoExpiration,
		),
	),
)

result = await graph_client.role_management.directory.role_assignment_schedule_requests.post(request_body)


```