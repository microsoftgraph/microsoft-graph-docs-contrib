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

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageAssignmentPolicy(
	access_package_id = "56ff43fd-6b05-48df-9634-956a777fce6d",
	display_name = "direct",
	description = "direct assignments by administrator",
	access_review_settings = None,
	requestor_settings = RequestorSettings(
		scope_type = "NoSubjects",
		accept_requests = True,
		allowed_requestors = [
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