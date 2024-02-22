---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_assignment_policy import AccessPackageAssignmentPolicy
from msgraph.generated.models.subject_set import SubjectSet
from msgraph.generated.models.attribute_rule_members import AttributeRuleMembers
from msgraph.generated.models.access_package_automatic_request_settings import AccessPackageAutomaticRequestSettings
from msgraph.generated.models.access_package import AccessPackage

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageAssignmentPolicy(
	display_name = "Sales department users",
	description = "All users from sales department",
	allowed_target_scope = AllowedTargetScope.SpecificDirectoryUsers,
	specific_allowed_targets = [
		AttributeRuleMembers(
			odata_type = "#microsoft.graph.attributeRuleMembers",
			description = "Membership rule for all users from sales department",
			membership_rule = "(user.department -eq \"Sales\")",
		),
	],
	automatic_request_settings = AccessPackageAutomaticRequestSettings(
		request_access_for_allowed_targets = True,
		remove_access_when_target_leaves_allowed_targets = True,
		grace_period_before_access_removal = "P7D",
	),
	access_package = AccessPackage(
		id = "8a36831e-1527-4b2b-aff2-81259a8d8e76",
	),
)

result = await graph_client.identity_governance.entitlement_management.assignment_policies.post(request_body)


```