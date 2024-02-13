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
	action = "SelfActivate",
	principal_id = "c6ad1942-4afa-47f8-8d48-afb5d8d69d2f",
	role_definition_id = "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3",
	directory_scope_id = "/",
	justification = "Need to update app roles for selected apps.",
	schedule_info = RequestSchedule(
		start_date_time = "2021-08-17T17:40:00.000Z",
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