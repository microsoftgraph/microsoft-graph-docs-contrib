---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.unified_role_management_policy_expiration_rule import UnifiedRoleManagementPolicyExpirationRule
from msgraph_beta.generated.models.unified_role_management_policy_rule_target import UnifiedRoleManagementPolicyRuleTarget
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UnifiedRoleManagementPolicyExpirationRule(
	odata_type = "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule",
	id = "Expiration_EndUser_Assignment",
	is_expiration_required = True,
	maximum_duration = "PT1H45M",
	target = UnifiedRoleManagementPolicyRuleTarget(
		caller = "EndUser",
		operations = [
			"All",
		],
		level = "Assignment",
		inheritable_settings = [
		],
		enforced_settings = [
		],
	),
)

result = await graph_client.policies.role_management_policies.by_unified_role_management_policy_id('unifiedRoleManagementPolicy-id').rules.by_unified_role_management_policy_rule_id('unifiedRoleManagementPolicyRule-id').patch(request_body)


```