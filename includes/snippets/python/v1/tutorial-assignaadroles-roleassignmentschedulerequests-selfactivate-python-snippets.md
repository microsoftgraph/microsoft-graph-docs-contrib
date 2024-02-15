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
	principal_id = "7146daa8-1b4b-4a66-b2f7-cf593d03c8d2",
	role_definition_id = "fe930be7-5e62-47db-91af-98c3a49a38b1",
	directory_scope_id = "/",
	justification = "Need to invalidate all app refresh tokens for Contoso users.",
	schedule_info = RequestSchedule(
		start_date_time = "2021-09-04T15:13:00.000Z",
		expiration = ExpirationPattern(
			type = ExpirationPatternType.AfterDuration,
			duration = "PT5H",
		),
	),
	ticket_info = TicketInfo(
		ticket_number = "CONTOSO:Security-012345",
		ticket_system = "Contoso ICM",
	),
)

result = await graph_client.role_management.directory.role_assignment_schedule_requests.post(request_body)


```