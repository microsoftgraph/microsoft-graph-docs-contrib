---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.scheduled_permissions_request import ScheduledPermissionsRequest
from msgraph.generated.models.single_resource_gcp_permissions_definition import SingleResourceGcpPermissionsDefinition
from msgraph.generated.models.permissions_definition_authorization_system import PermissionsDefinitionAuthorizationSystem
from msgraph.generated.models.gcp_action_permissions_definition_action import GcpActionPermissionsDefinitionAction
from msgraph.generated.models.permissions_definition_authorization_system_identity import PermissionsDefinitionAuthorizationSystemIdentity
from msgraph.generated.models.ed_identity_source import EdIdentitySource
from msgraph.generated.models.request_schedule import RequestSchedule
from msgraph.generated.models.expiration_pattern import ExpirationPattern
from msgraph.generated.models.ticket_info import TicketInfo

graph_client = GraphServiceClient(credentials, scopes)

request_body = ScheduledPermissionsRequest(
	requested_permissions = SingleResourceGcpPermissionsDefinition(
		odata_type = "microsoft.graph.singleResourceGcpPermissionsDefinition",
		authorization_system_info = PermissionsDefinitionAuthorizationSystem(
			authorization_system_id = "carbide-bonsai-205017",
			authorization_system_type = "GCP",
		),
		action_info = GcpActionPermissionsDefinitionAction(
			odata_type = "microsoft.graph.gcpActionPermissionsDefinitionAction",
			actions = [
				"aiplatform:dataitems",
			],
		),
		identity_info = PermissionsDefinitionAuthorizationSystemIdentity(
			external_id = "alex@contoso.com",
			source = EdIdentitySource(
				odata_type = "microsoft.graph.edIdentitySource",
			),
			identity_type = PermissionsDefinitionIdentityType.User,
		),
		resource_id = "carbide-bonsai-205017",
	),
	justification = "I need to do this because I want to code my own chat GPT-3 bot on GCP",
	notes = "Pretty Pleaseeeee",
	schedule_info = RequestSchedule(
		expiration = ExpirationPattern(
			duration = "PT1H",
		),
	),
	ticket_info = TicketInfo(
		ticket_number = "INC1234567",
		ticket_system = "ServiceNow",
		ticket_submitter_identity_id = "alex@contoso.com",
		ticket_approver_identity_id = "alexmanager@contoso.com",
	),
)

result = await graph_client.identity_governance.permissions_management.scheduled_permissions_requests.post(request_body)


```