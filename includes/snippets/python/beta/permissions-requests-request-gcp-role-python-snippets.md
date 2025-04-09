---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.scheduled_permissions_request import ScheduledPermissionsRequest
from msgraph_beta.generated.models.single_resource_gcp_permissions_definition import SingleResourceGcpPermissionsDefinition
from msgraph_beta.generated.models.permissions_definition_authorization_system import PermissionsDefinitionAuthorizationSystem
from msgraph_beta.generated.models.gcp_role_permissions_definition_action import GcpRolePermissionsDefinitionAction
from msgraph_beta.generated.models.permissions_definition_gcp_role import PermissionsDefinitionGcpRole
from msgraph_beta.generated.models.permissions_definition_authorization_system_identity import PermissionsDefinitionAuthorizationSystemIdentity
from msgraph_beta.generated.models.ed_identity_source import EdIdentitySource
from msgraph_beta.generated.models.permissions_definition_identity_type import PermissionsDefinitionIdentityType
from msgraph_beta.generated.models.request_schedule import RequestSchedule
from msgraph_beta.generated.models.expiration_pattern import ExpirationPattern
from msgraph_beta.generated.models.ticket_info import TicketInfo
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ScheduledPermissionsRequest(
	requested_permissions = SingleResourceGcpPermissionsDefinition(
		odata_type = "microsoft.graph.singleResourceGcpPermissionsDefinition",
		authorization_system_info = PermissionsDefinitionAuthorizationSystem(
			authorization_system_id = "carbide-bonsai-205017",
			authorization_system_type = "GCP",
		),
		action_info = GcpRolePermissionsDefinitionAction(
			odata_type = "microsoft.graph.gcpRolePermissionsDefinitionAction",
			roles = [
				PermissionsDefinitionGcpRole(
					id = "roles/dialogflow.aamAdmin",
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
		resource_id = "carbide-bonsai-205017",
	),
	justification = "I need to do this because I want to be an administrator",
	notes = "Pretty Pleaseeeee",
	schedule_info = RequestSchedule(
		start_date_time = None,
		expiration = ExpirationPattern(
			duration = "PT1H",
		),
		recurrence = None,
	),
	ticket_info = TicketInfo(
		ticket_number = "123456",
		ticket_system = "ServiceNow",
		ticket_submitter_identity_id = "alex@contoso.com",
		ticket_approver_identity_id = "alexmanager@contoso.com",
	),
)

result = await graph_client.identity_governance.permissions_management.scheduled_permissions_requests.post(request_body)


```