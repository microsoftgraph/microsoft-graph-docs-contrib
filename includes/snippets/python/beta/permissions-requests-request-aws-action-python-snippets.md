---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.scheduled_permissions_request import ScheduledPermissionsRequest
from msgraph_beta.generated.models.aws_permissions_definition import AwsPermissionsDefinition
from msgraph_beta.generated.models.permissions_definition_authorization_system import PermissionsDefinitionAuthorizationSystem
from msgraph_beta.generated.models.aws_actions_permissions_definition_action import AwsActionsPermissionsDefinitionAction
from msgraph_beta.generated.models.aws_statement import AwsStatement
from msgraph_beta.generated.models.aws_statement_effect import AwsStatementEffect
from msgraph_beta.generated.models.aws_condition import AwsCondition
from msgraph_beta.generated.models.permissions_definition_authorization_system_identity import PermissionsDefinitionAuthorizationSystemIdentity
from msgraph_beta.generated.models.saml_identity_source import SamlIdentitySource
from msgraph_beta.generated.models.permissions_definition_identity_type import PermissionsDefinitionIdentityType
from msgraph_beta.generated.models.request_schedule import RequestSchedule
from msgraph_beta.generated.models.expiration_pattern import ExpirationPattern
from msgraph_beta.generated.models.patterned_recurrence import PatternedRecurrence
from msgraph_beta.generated.models.recurrence_pattern import RecurrencePattern
from msgraph_beta.generated.models.day_of_week import DayOfWeek
from msgraph_beta.generated.models.recurrence_range import RecurrenceRange
from msgraph_beta.generated.models.ticket_info import TicketInfo
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ScheduledPermissionsRequest(
	requested_permissions = AwsPermissionsDefinition(
		odata_type = "microsoft.graph.awsPermissionsDefinition",
		authorization_system_info = PermissionsDefinitionAuthorizationSystem(
			authorization_system_id = "956987887735",
			authorization_system_type = "AWS",
		),
		action_info = AwsActionsPermissionsDefinitionAction(
			odata_type = "microsoft.graph.awsActionsPermissionsDefinitionAction",
			statements = [
				AwsStatement(
					statement_id = "test1",
					actions = [
						"s3:AbortMultipartUpload",
						"s3:CreateBucket",
					],
					not_actions = [
					],
					resources = [
						"*",
					],
					not_resources = [
					],
					effect = AwsStatementEffect.Allow,
					condition = AwsCondition(
						additional_data = {
								"numeric_less_than_equals" : {
										"aws:_multi_factor_auth_age" : "3600",
								},
						}
					),
				),
				AwsStatement(
					statement_id = "test2",
					actions = [
						"s3:Delete:*",
					],
					not_actions = [
					],
					resources = [
						"*",
					],
					not_resources = [
					],
					effect = AwsStatementEffect.Allow,
					condition = AwsCondition(
						additional_data = {
								"numeric_less_than_equals" : {
										"aws:_multi_factor_auth_age" : "3600",
								},
						}
					),
				),
			],
			assign_to_role_id = "arn:aws:iam::956987887735:role/ck-saml-power-user",
		),
		identity_info = PermissionsDefinitionAuthorizationSystemIdentity(
			external_id = "rsn:alex@contoso.com",
			source = SamlIdentitySource(
				odata_type = "microsoft.graph.samlIdentitySource",
			),
			identity_type = PermissionsDefinitionIdentityType.User,
		),
	),
	justification = "I need to do this because I want to access S3 resources",
	notes = "Please",
	schedule_info = RequestSchedule(
		start_date_time = "2023-02-08T12:15:00Z",
		expiration = ExpirationPattern(
			duration = "PT1H",
		),
		recurrence = PatternedRecurrence(
			pattern = RecurrencePattern(
				day_of_month = 5,
				days_of_week = [
				],
				interval = 1,
				additional_data = {
						"reccurence_pattern_type" : "absoluteMonthly",
				}
			),
			range = RecurrenceRange(
				start_date = "2023-02-08",
				additional_data = {
						"reccurence_range_type" : "noEnd",
				}
			),
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