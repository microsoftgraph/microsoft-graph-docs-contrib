---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.unified_role_assignment_schedule_request import UnifiedRoleAssignmentScheduleRequest
from msgraph.generated.models.request_schedule import RequestSchedule
from msgraph.generated.models.expiration_pattern import ExpirationPattern
from msgraph.generated.models.ticket_info import TicketInfo

graph_client = GraphServiceClient(credentials, scopes)

request_body = UnifiedRoleAssignmentScheduleRequest(
	action = UnifiedRoleScheduleRequestActions.SelfActivate,
	principal_id = "071cc716-8147-4397-a5ba-b2105951cc0b",
	role_definition_id = "8424c6f0-a189-499e-bbd0-26c1753c96d4",
	directory_scope_id = "/",
	justification = "I need access to the Attribute Administrator role to manage attributes to be assigned to restricted AUs",
	schedule_info = RequestSchedule(
		start_date_time = "2022-04-14T00:00:00.000Z",
		expiration = ExpirationPattern(
			type = ExpirationPatternType.AfterDuration,
			duration = "PT5H",
		),
	),
	ticket_info = TicketInfo(
		ticket_number = "CONTOSO:Normal-67890",
		ticket_system = "MS Project",
	),
)

result = await graph_client.role_management.directory.role_assignment_schedule_requests.post(request_body)


```