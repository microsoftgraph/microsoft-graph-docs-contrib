---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_assignment_policy import AccessPackageAssignmentPolicy
from msgraph.generated.models.subject_set import SubjectSet
from msgraph.generated.models.expiration_pattern import ExpirationPattern
from msgraph.generated.models.access_package_assignment_requestor_settings import AccessPackageAssignmentRequestorSettings
from msgraph.generated.models.access_package_assignment_approval_settings import AccessPackageAssignmentApprovalSettings
from msgraph.generated.models.access_package_approval_stage import AccessPackageApprovalStage
from msgraph.generated.models.internal_sponsors import InternalSponsors
from msgraph.generated.models.single_user import SingleUser
from msgraph.generated.models.group_members import GroupMembers
from msgraph.generated.models.access_package_assignment_review_settings import AccessPackageAssignmentReviewSettings
from msgraph.generated.models.entitlement_management_schedule import EntitlementManagementSchedule
from msgraph.generated.models.patterned_recurrence import PatternedRecurrence
from msgraph.generated.models.recurrence_pattern import RecurrencePattern
from msgraph.generated.models.day_of_week import DayOfWeek
from msgraph.generated.models.recurrence_range import RecurrenceRange
from msgraph.generated.models.access_package import AccessPackage

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageAssignmentPolicy(
	display_name = "policy for external access requests",
	description = "policy for users from connected organizations to request access, with two stages of approval.",
	allowed_target_scope = AllowedTargetScope.AllConfiguredConnectedOrganizationUsers,
	specific_allowed_targets = [
	],
	expiration = ExpirationPattern(
		type = ExpirationPatternType.NoExpiration,
	),
	requestor_settings = AccessPackageAssignmentRequestorSettings(
		enable_targets_to_self_add_access = True,
		enable_targets_to_self_update_access = True,
		enable_targets_to_self_remove_access = True,
		allow_custom_assignment_schedule = False,
		enable_on_behalf_requestors_to_add_access = False,
		enable_on_behalf_requestors_to_update_access = False,
		enable_on_behalf_requestors_to_remove_access = False,
		on_behalf_requestors = [
		],
	),
	request_approval_settings = AccessPackageAssignmentApprovalSettings(
		is_approval_required_for_add = True,
		is_approval_required_for_update = False,
		stages = [
			AccessPackageApprovalStage(
				duration_before_automatic_denial = "P14D",
				is_approver_justification_required = False,
				is_escalation_enabled = False,
				duration_before_escalation = "PT0S",
				primary_approvers = [
					InternalSponsors(
						odata_type = "#microsoft.graph.internalSponsors",
					),
				],
				fallback_primary_approvers = [
					SingleUser(
						odata_type = "#microsoft.graph.singleUser",
						user_id = "7deff43e-1f17-44ef-9e5f-d516b0ba11d4",
					),
					GroupMembers(
						odata_type = "#microsoft.graph.groupMembers",
						group_id = "1623f912-5e86-41c2-af47-39dd67582b66",
					),
				],
				escalation_approvers = [
				],
				fallback_escalation_approvers = [
				],
			),
			AccessPackageApprovalStage(
				duration_before_automatic_denial = "P14D",
				is_approver_justification_required = False,
				is_escalation_enabled = False,
				duration_before_escalation = "PT0S",
				primary_approvers = [
				],
				fallback_primary_approvers = [
					SingleUser(
						odata_type = "#microsoft.graph.singleUser",
						user_id = "46184453-e63b-4f20-86c2-c557ed5d5df9",
					),
					GroupMembers(
						odata_type = "#microsoft.graph.groupMembers",
						group_id = "1623f912-5e86-41c2-af47-39dd67582b66",
					),
				],
				escalation_approvers = [
				],
				fallback_escalation_approvers = [
				],
			),
		],
	),
	review_settings = AccessPackageAssignmentReviewSettings(
		is_enabled = True,
		expiration_behavior = AccessReviewExpirationBehavior.KeepAccess,
		is_recommendation_enabled = True,
		is_reviewer_justification_required = True,
		is_self_review = False,
		schedule = EntitlementManagementSchedule(
			start_date_time = "2022-07-02T06:59:59.998Z",
			expiration = ExpirationPattern(
				duration = "P14D",
				type = ExpirationPatternType.AfterDuration,
			),
			recurrence = PatternedRecurrence(
				pattern = RecurrencePattern(
					type = RecurrencePatternType.AbsoluteMonthly,
					interval = 3,
					month = 0,
					day_of_month = 0,
					days_of_week = [
					],
				),
				range = RecurrenceRange(
					type = RecurrenceRangeType.NoEnd,
					number_of_occurrences = 0,
				),
			),
		),
		primary_reviewers = [
			GroupMembers(
				odata_type = "#microsoft.graph.groupMembers",
				group_id = "1623f912-5e86-41c2-af47-39dd67582b66",
			),
		],
		fallback_reviewers = [
		],
	),
	access_package = AccessPackage(
		id = "a2e1ca1e-4e56-47d2-9daa-e2ba8d12a82b",
	),
)

result = await graph_client.identity_governance.entitlement_management.assignment_policies.post(request_body)


```