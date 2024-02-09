---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_assignment_policy import AccessPackageAssignmentPolicy
from msgraph.generated.models.requestor_settings import RequestorSettings
from msgraph.generated.models.user_set import UserSet
from msgraph.generated.models.approval_settings import ApprovalSettings
from msgraph.generated.models.approval_stage import ApprovalStage
from msgraph.generated.models.group_members import GroupMembers
from msgraph.generated.models.external_sponsors import ExternalSponsors
from msgraph.generated.models.single_user import SingleUser
from msgraph.generated.models.internal_sponsors import InternalSponsors
from msgraph.generated.models.assignment_review_settings import AssignmentReviewSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageAssignmentPolicy(
	access_package_id = "string (identifier)",
	display_name = "Users from connected organizations can request",
	description = "Allow users from configured connected organizations to request and be approved by their sponsors",
	can_extend = False,
	duration_in_days = 365,
	expiration_date_time = None,
	requestor_settings = RequestorSettings(
		scope_type = "AllExistingConnectedOrganizationSubjects",
		accept_requests = True,
		allowed_requestors = [
		],
	),
	request_approval_settings = ApprovalSettings(
		is_approval_required = True,
		is_approval_required_for_extension = False,
		is_requestor_justification_required = True,
		approval_mode = "Serial",
		approval_stages = [
			ApprovalStage(
				approval_stage_time_out_in_days = 14,
				is_approver_justification_required = True,
				is_escalation_enabled = True,
				escalation_time_in_minutes = 11520,
				primary_approvers = [
					GroupMembers(
						odata_type = "#microsoft.graph.groupMembers",
						is_backup = True,
						id = "string (identifier)",
						description = "group for users from connected organizations which have no external sponsor",
					),
					ExternalSponsors(
						odata_type = "#microsoft.graph.externalSponsors",
						is_backup = False,
					),
				],
				escalation_approvers = [
					SingleUser(
						odata_type = "#microsoft.graph.singleUser",
						is_backup = True,
						id = "string (identifier)",
						description = "user if the external sponsor does not respond",
					),
				],
			),
			ApprovalStage(
				approval_stage_time_out_in_days = 14,
				is_approver_justification_required = True,
				is_escalation_enabled = True,
				escalation_time_in_minutes = 11520,
				primary_approvers = [
					GroupMembers(
						odata_type = "#microsoft.graph.groupMembers",
						is_backup = True,
						id = "string (identifier)",
						description = "group for users from connected organizations which have no internal sponsor",
					),
					InternalSponsors(
						odata_type = "#microsoft.graph.internalSponsors",
						is_backup = False,
					),
				],
				escalation_approvers = [
					SingleUser(
						odata_type = "#microsoft.graph.singleUser",
						is_backup = True,
						id = "string (identifier)",
						description = "user if the internal sponsor does not respond",
					),
				],
			),
		],
	),
	access_review_settings = AssignmentReviewSettings(
		is_enabled = True,
		recurrence_type = "quarterly",
		reviewer_type = "Self",
		start_date_time = "2020-04-01T07:59:59.998Z",
		duration_in_days = 25,
		reviewers = [
		],
	),
)

result = await graph_client.identity_governance.entitlement_management.access_package_assignment_policies.post(request_body)


```