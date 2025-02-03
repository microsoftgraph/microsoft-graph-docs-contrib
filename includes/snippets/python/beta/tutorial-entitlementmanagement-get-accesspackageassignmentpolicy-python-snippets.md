---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.access_package_assignment_policy import AccessPackageAssignmentPolicy
from msgraph_beta.generated.models.requestor_settings import RequestorSettings
from msgraph_beta.generated.models.user_set import UserSet
from msgraph_beta.generated.models.single_user import SingleUser
from msgraph_beta.generated.models.approval_settings import ApprovalSettings
from msgraph_beta.generated.models.approval_stage import ApprovalStage
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessPackageAssignmentPolicy(
	access_package_id = "88203d16-0e31-41d4-87b2-dd402f1435e9",
	display_name = "Specific users",
	description = "Specific users can request assignment",
	access_review_settings = None,
	duration_in_days = 30,
	requestor_settings = RequestorSettings(
		scope_type = "SpecificDirectorySubjects",
		accept_requests = True,
		allowed_requestors = [
			SingleUser(
				odata_type = "#microsoft.graph.singleUser",
				is_backup = False,
				id = "007d1c7e-7fa8-4e33-b678-5e437acdcddc",
				description = "Requestor1",
			),
		],
	),
	request_approval_settings = ApprovalSettings(
		is_approval_required = False,
		is_approval_required_for_extension = False,
		is_requestor_justification_required = False,
		approval_mode = "NoApproval",
		approval_stages = [
		],
	),
)

result = await graph_client.identity_governance.entitlement_management.access_package_assignment_policies.post(request_body)


```