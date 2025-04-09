---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.cross_tenant_access_policy_configuration_default import CrossTenantAccessPolicyConfigurationDefault
from msgraph_beta.generated.models.cross_tenant_access_policy_b2_b_setting import CrossTenantAccessPolicyB2BSetting
from msgraph_beta.generated.models.cross_tenant_access_policy_target_configuration import CrossTenantAccessPolicyTargetConfiguration
from msgraph_beta.generated.models.cross_tenant_access_policy_target_configuration_access_type import CrossTenantAccessPolicyTargetConfigurationAccessType
from msgraph_beta.generated.models.cross_tenant_access_policy_target import CrossTenantAccessPolicyTarget
from msgraph_beta.generated.models.cross_tenant_access_policy_target_type import CrossTenantAccessPolicyTargetType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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