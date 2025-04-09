---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.permission_grant_pre_approval_policy import PermissionGrantPreApprovalPolicy
from msgraph_beta.generated.models.pre_approval_detail import PreApprovalDetail
from msgraph_beta.generated.models.resource_scope_type import ResourceScopeType
from msgraph_beta.generated.models.all_scope_sensitivity_labels import AllScopeSensitivityLabels
from msgraph_beta.generated.models.label_kind import LabelKind
from msgraph_beta.generated.models.pre_approved_permissions import PreApprovedPermissions
from msgraph_beta.generated.models.permission_kind import PermissionKind
from msgraph_beta.generated.models.permission_type import PermissionType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PermissionGrantPreApprovalPolicy(
	conditions = [
		PreApprovalDetail(
			scope_type = ResourceScopeType.Group,
			sensitivity_labels = AllScopeSensitivityLabels(
				odata_type = "#microsoft.graph.allScopeSensitivityLabels",
				label_kind = LabelKind.All,
			),
			permissions = PreApprovedPermissions(
				odata_type = "#microsoft.graph.allPermissionsOnResourceApp",
				permission_kind = PermissionKind.AllPermissionsOnResourceApp,
				permission_type = PermissionType.Application,
				additional_data = {
						"resource_application_id" : "00000003-0000-0000-c000-000000000000",
				}
			),
		),
	],
)

result = await graph_client.policies.permission_grant_pre_approval_policies.post(request_body)


```