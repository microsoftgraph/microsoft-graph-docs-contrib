---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_assignment_policy import AccessPackageAssignmentPolicy
from msgraph.generated.models.expiration_pattern import ExpirationPattern
from msgraph.generated.models.access_package_assignment_requestor_settings import AccessPackageAssignmentRequestorSettings
from msgraph.generated.models.access_package_assignment_approval_settings import AccessPackageAssignmentApprovalSettings
from msgraph.generated.models.access_package_approval_stage import AccessPackageApprovalStage
from msgraph.generated.models.subject_set import SubjectSet
from msgraph.generated.models.single_user import SingleUser
from msgraph.generated.models.access_package_question import AccessPackageQuestion
from msgraph.generated.models.access_package_multiple_choice_question import AccessPackageMultipleChoiceQuestion
from msgraph.generated.models.access_package_answer_choice import AccessPackageAnswerChoice
from msgraph.generated.models.access_package_text_input_question import AccessPackageTextInputQuestion
from msgraph.generated.models.access_package_localized_text import AccessPackageLocalizedText
from msgraph.generated.models.access_package import AccessPackage

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageAssignmentPolicy(
	display_name = "A Policy With Questions",
	description = "",
	allowed_target_scope = AllowedTargetScope.AllMemberUsers,
	expiration = ExpirationPattern(
		type = ExpirationPatternType.NoExpiration,
	),
	requestor_settings = AccessPackageAssignmentRequestorSettings(
		enable_targets_to_self_add_access = True,
		enable_targets_to_self_update_access = True,
		enable_targets_to_self_remove_access = True,
	),
	request_approval_settings = AccessPackageAssignmentApprovalSettings(
		is_approval_required_for_add = True,
		is_approval_required_for_update = True,
		stages = [
			AccessPackageApprovalStage(
				duration_before_automatic_denial = "P7D",
				is_approver_justification_required = False,
				is_escalation_enabled = False,
				fallback_primary_approvers = [
				],
				escalation_approvers = [
				],
				fallback_escalation_approvers = [
				],
				primary_approvers = [
					SingleUser(
						odata_type = "#microsoft.graph.singleUser",
						user_id = "08a551cb-575a-4343-b914-f6e42798bd20",
					),
				],
			),
		],
	),
	questions = [
		AccessPackageMultipleChoiceQuestion(
			odata_type = "#microsoft.graph.accessPackageMultipleChoiceQuestion",
			sequence = 1,
			is_required = True,
			is_answer_editable = True,
			text = "What country are you working from?",
			is_multiple_selection_allowed = False,
			choices = [
				AccessPackageAnswerChoice(
					odata_type = "microsoft.graph.accessPackageAnswerChoice",
					actual_value = "KE",
					text = "Kenya",
				),
				AccessPackageAnswerChoice(
					odata_type = "microsoft.graph.accessPackageAnswerChoice",
					actual_value = "US",
					text = "United States",
				),
				AccessPackageAnswerChoice(
					odata_type = "microsoft.graph.accessPackageAnswerChoice",
					actual_value = "GY",
					text = "Guyana",
				),
				AccessPackageAnswerChoice(
					odata_type = "microsoft.graph.accessPackageAnswerChoice",
					actual_value = "BD",
					text = "Bangladesh",
				),
				AccessPackageAnswerChoice(
					odata_type = "microsoft.graph.accessPackageAnswerChoice",
					actual_value = "JP",
					text = "Japan",
				),
			],
		),
		AccessPackageTextInputQuestion(
			odata_type = "#microsoft.graph.accessPackageTextInputQuestion",
			sequence = 2,
			is_required = True,
			is_answer_editable = True,
			text = "What do you do for work?",
			localizations = [
				AccessPackageLocalizedText(
					language_code = "fr-CA",
					text = "Que fais-tu comme travail?",
				),
			],
			is_single_line_question = False,
			regex_pattern = "[a-zA-Z]+[a-zA-Z\s]*",
		),
	],
	access_package = AccessPackage(
		id = "977c7ff4-ef8f-4910-9d31-49048ddf3120",
	),
)

result = await graph_client.identity_governance.entitlement_management.assignment_policies.post(request_body)


```