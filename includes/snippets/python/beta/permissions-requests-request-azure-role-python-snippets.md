---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.scheduled_permissions_request import ScheduledPermissionsRequest
from msgraph.generated.models.single_resource_azure_permissions_definition import SingleResourceAzurePermissionsDefinition
from msgraph.generated.models.permissions_definition_authorization_system import PermissionsDefinitionAuthorizationSystem
from msgraph.generated.models.azure_role_permissions_definition_action import AzureRolePermissionsDefinitionAction
from msgraph.generated.models.permissions_definition_azure_role import PermissionsDefinitionAzureRole
from msgraph.generated.models.permissions_definition_authorization_system_identity import PermissionsDefinitionAuthorizationSystemIdentity
from msgraph.generated.models.ed_identity_source import EdIdentitySource
from msgraph.generated.models.request_schedule import RequestSchedule
from msgraph.generated.models.expiration_pattern import ExpirationPattern
from msgraph.generated.models.ticket_info import TicketInfo

graph_client = GraphServiceClient(credentials, scopes)

request_body = ScheduledPermissionsRequest(
	requested_permissions = SingleResourceAzurePermissionsDefinition(
		odata_type = "microsoft.graph.singleResourceAzurePermissionsDefinition",
		authorization_system_info = PermissionsDefinitionAuthorizationSystem(
			authorization_system_id = "87eefd90-95a3-480a-ba42-56ff299a05ee",
			authorization_system_type = "AZURE",
		),
		action_info = AzureRolePermissionsDefinitionAction(
			odata_type = "microsoft.graph.azureRolePermissionsDefinitionAction",
			roles = [
				PermissionsDefinitionAzureRole(
					id = "cdda3590-29a3-44f6-95f2-9f980659eb04",
				),
				PermissionsDefinitionAzureRole(
					id = "312a565d-c81f-4fd8-895a-4e21e48d571c",
				),
			],
		),
		identity_info = PermissionsDefinitionAuthorizationSystemIdentity(
			external_id = "alex@contoso.com",
			source = EdIdentitySource(
				odata_type = "microsoft.graph.edIdentitySource",
			),
			identity_type = PermissionsDefinitionIdentityType.User,
		),
		resource_id = "/subscriptions/87eefd90-95a3-480a-ba42-56ff299a05ee",
	),
	justification = "I need to do this because I want to some new azure roles",
	notes = "Pretty Pleaseeeee",
	schedule_info = RequestSchedule(
		expiration = ExpirationPattern(
			duration = "PT1H",
		),
		recurrence = None,
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