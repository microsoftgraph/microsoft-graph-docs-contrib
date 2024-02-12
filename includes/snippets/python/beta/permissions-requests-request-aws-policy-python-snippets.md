---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.scheduled_permissions_request import ScheduledPermissionsRequest
from msgraph.generated.models.aws_permissions_definition import AwsPermissionsDefinition
from msgraph.generated.models.permissions_definition_authorization_system import PermissionsDefinitionAuthorizationSystem
from msgraph.generated.models.aws_policy_permissions_definition_action import AwsPolicyPermissionsDefinitionAction
from msgraph.generated.models.permissions_definition_aws_policy import PermissionsDefinitionAwsPolicy
from msgraph.generated.models.permissions_definition_authorization_system_identity import PermissionsDefinitionAuthorizationSystemIdentity
from msgraph.generated.models.saml_identity_source import SamlIdentitySource
from msgraph.generated.models.request_schedule import RequestSchedule
from msgraph.generated.models.expiration_pattern import ExpirationPattern
from msgraph.generated.models.ticket_info import TicketInfo

graph_client = GraphServiceClient(credentials, scopes)

request_body = ScheduledPermissionsRequest(
	requested_permissions = AwsPermissionsDefinition(
		odata_type = "#microsoft.graph.awsPermissionsDefinition",
		authorization_system_info = PermissionsDefinitionAuthorizationSystem(
			authorization_system_id = "956987887735",
			authorization_system_type = "AWS",
		),
		action_info = AwsPolicyPermissionsDefinitionAction(
			odata_type = "microsoft.graph.awsPolicyPermissionsDefinitionAction",
			policies = [
				PermissionsDefinitionAwsPolicy(
					id = "arn:aws:iam::956987887735:policy/AddUserToGroup",
				),
			],
			assign_to_role_id = "arn:aws:aim::956987887735:role/saml-user",
		),
		identity_info = PermissionsDefinitionAuthorizationSystemIdentity(
			external_id = "alex@contoso.com",
			source = SamlIdentitySource(
				odata_type = "microsoft.graph.samlIdentitySource",
			),
			identity_type = PermissionsDefinitionIdentityType.User,
		),
	),
	justification = "I need to do this because I want to add a user to a group",
	notes = "Pretty Please",
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