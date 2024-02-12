---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.cross_tenant_access_policy_configuration_default import CrossTenantAccessPolicyConfigurationDefault
from msgraph.generated.models.cross_tenant_access_policy_b2_b_setting import CrossTenantAccessPolicyB2BSetting
from msgraph.generated.models.cross_tenant_access_policy_target_configuration import CrossTenantAccessPolicyTargetConfiguration
from msgraph.generated.models.cross_tenant_access_policy_target import CrossTenantAccessPolicyTarget

graph_client = GraphServiceClient(credentials, scopes)

request_body = CrossTenantAccessPolicyConfigurationDefault(
	b2b_collaboration_outbound = CrossTenantAccessPolicyB2BSetting(
		users_and_groups = CrossTenantAccessPolicyTargetConfiguration(
			access_type = CrossTenantAccessPolicyTargetConfigurationAccessType.Blocked,
			targets = [
				CrossTenantAccessPolicyTarget(
					target = "0be493dc-cb56-4a53-936f-9cf64410b8b0",
					target_type = CrossTenantAccessPolicyTargetType.Group,
				),
			],
		),
		applications = CrossTenantAccessPolicyTargetConfiguration(
			access_type = CrossTenantAccessPolicyTargetConfigurationAccessType.Blocked,
			targets = [
				CrossTenantAccessPolicyTarget(
					target = "AllApplications",
					target_type = CrossTenantAccessPolicyTargetType.Application,
				),
			],
		),
	),
)

result = await graph_client.policies.cross_tenant_access_policy.default.patch(request_body)


```