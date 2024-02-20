---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_assignment_policy import AccessPackageAssignmentPolicy
from msgraph.generated.models.requestor_settings import RequestorSettings
from msgraph.generated.models.approval_settings import ApprovalSettings
from msgraph.generated.models.approval_stage import ApprovalStage
from msgraph.generated.models.user_set import UserSet
from msgraph.generated.models.group_members import GroupMembers
from msgraph.generated.models.external_sponsors import ExternalSponsors
from msgraph.generated.models.access_package_question import AccessPackageQuestion
from msgraph.generated.models.access_package_multiple_choice_question import AccessPackageMultipleChoiceQuestion
from msgraph.generated.models.access_package_localized_content import AccessPackageLocalizedContent
from msgraph.generated.models.access_package_localized_text import AccessPackageLocalizedText
from msgraph.generated.models.access_package_answer_choice import AccessPackageAnswerChoice
from msgraph.generated.models.access_package_text_input_question import AccessPackageTextInputQuestion

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageAssignmentPolicy(
	access_package_id = "b2eba9a1-b357-42ee-83a8-336522ed6cbf",
	display_name = "Users from connected organizations can request",
	description = "Allow users from configured connected organizations to request and be approved by their sponsors",
	can_extend = False,
	duration_in_days = 365,
	expiration_date_time = None,
	requestor_settings = RequestorSettings(
		scope_type = "AllExistingConnectedOrganizationSubjects",
		accept_requests = True,
	),
	request_approval_settings = ApprovalSettings(
		is_approval_required = True,
		is_approval_required_for_extension = False,
		is_requestor_justification_required = True,
		approval_mode = "SingleStage",
		approval_stages = [
			ApprovalStage(
				approval_stage_time_out_in_days = 14,
				is_approver_justification_required = True,
				is_escalation_enabled = False,
				escalation_time_in_minutes = 11520,
				primary_approvers = [
					GroupMembers(
						odata_type = "#microsoft.graph.groupMembers",
						is_backup = True,
						id = "d2dcb9a1-a445-42ee-83a8-476522ed6cbf",
						description = "group for users from connected organizations which have no external sponsor",
					),
					ExternalSponsors(
						odata_type = "#microsoft.graph.externalSponsors",
						is_backup = False,
					),
				],
			),
		],
	),
	questions = [
		AccessPackageMultipleChoiceQuestion(
			is_required = False,
			text = AccessPackageLocalizedContent(
				default_text = "what state are you from?",
				localized_texts = [
					AccessPackageLocalizedText(
						text = "¿De qué estado eres?",
						language_code = "es",
					),
				],
			),
			odata_type = "#microsoft.graph.accessPackageMultipleChoiceQuestion",
			choices = [
				AccessPackageAnswerChoice(
					actual_value = "AZ",
					display_value = AccessPackageLocalizedContent(
						localized_texts = [
							AccessPackageLocalizedText(
								text = "Arizona",
								language_code = "es",
							),
						],
					),
				),
				AccessPackageAnswerChoice(
					actual_value = "CA",
					display_value = AccessPackageLocalizedContent(
						localized_texts = [
							AccessPackageLocalizedText(
								text = "California",
								language_code = "es",
							),
						],
					),
				),
				AccessPackageAnswerChoice(
					actual_value = "OH",
					display_value = AccessPackageLocalizedContent(
						localized_texts = [
							AccessPackageLocalizedText(
								text = "Ohio",
								language_code = "es",
							),
						],
					),
				),
			],
			allows_multiple_selection = False,
		),
		AccessPackageTextInputQuestion(
			is_required = False,
			text = AccessPackageLocalizedContent(
				default_text = "Who is your manager?",
				localized_texts = [
					AccessPackageLocalizedText(
						text = "por qué necesita acceso a este paquete",
						language_code = "es",
					),
				],
			),
			odata_type = "#microsoft.graph.accessPackageTextInputQuestion",
			is_single_line_question = False,
		),
	],
)

result = await graph_client.identity_governance.entitlement_management.access_package_assignment_policies.post(request_body)


```