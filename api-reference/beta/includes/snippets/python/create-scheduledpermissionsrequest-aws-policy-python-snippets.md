---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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