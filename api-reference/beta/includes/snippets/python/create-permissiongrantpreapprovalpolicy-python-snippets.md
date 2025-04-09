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
from msgraph_beta.generated.models.all_pre_approved_permissions import AllPreApprovedPermissions
from msgraph_beta.generated.models.permission_kind import PermissionKind
from msgraph_beta.generated.models.permission_type import PermissionType
from msgraph_beta.generated.models.enumerated_pre_approved_permissions import EnumeratedPreApprovedPermissions
from msgraph_beta.generated.models.enumerated_scope_sensitivity_labels import EnumeratedScopeSensitivityLabels
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PermissionGrantPreApprovalPolicy(
	conditions = [
		PreApprovalDetail(
			scope_type = ResourceScopeType.Chat,
			sensitivity_labels = AllScopeSensitivityLabels(
				odata_type = "#microsoft.graph.allScopeSensitivityLabels",
				label_kind = LabelKind.All,
			),
			permissions = AllPreApprovedPermissions(
				odata_type = "#microsoft.graph.allPreApprovedPermissions",
				permission_kind = PermissionKind.All,
				permission_type = PermissionType.Application,
			),
		),
		PreApprovalDetail(
			scope_type = ResourceScopeType.Group,
			permissions = EnumeratedPreApprovedPermissions(
				odata_type = "#microsoft.graph.enumeratedPreApprovedPermissions",
				permission_kind = PermissionKind.Enumerated,
				permission_type = PermissionType.Application,
				resource_application_id = "00000003-0000-0000-c000-000000000000",
				permission_ids = [
					"134483aa-3dda-4d65-ac91-b8dda1417875",
					"9d33613d-f855-483b-bca7-ea63ac9f5485",
				],
			),
			additional_data = {
					"scope_sensitivity_labels" : {
							"@odata_type" : "microsoft.graph.enumeratedScopeSensitivityLabels",
							"label_kind" : LabelKind.Enumerated,
							"sensitivity_labels" : [
								"d9c43deb-f3e1-4422-9fd6-ccf22a3206b8",
								"c99dade2-aa54-4890-ac1c-a146fa26bd1e",
							],
					},
			}
		),
	],
)

result = await graph_client.policies.permission_grant_pre_approval_policies.post(request_body)


```