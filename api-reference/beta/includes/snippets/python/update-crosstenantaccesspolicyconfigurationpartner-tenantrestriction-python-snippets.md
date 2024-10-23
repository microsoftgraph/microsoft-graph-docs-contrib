---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.cross_tenant_access_policy_configuration_partner import CrossTenantAccessPolicyConfigurationPartner
from msgraph_beta.generated.models.cross_tenant_access_policy_tenant_restrictions import CrossTenantAccessPolicyTenantRestrictions
from msgraph_beta.generated.models.cross_tenant_access_policy_target_configuration import CrossTenantAccessPolicyTargetConfiguration
from msgraph_beta.generated.models.cross_tenant_access_policy_target_configuration_access_type import CrossTenantAccessPolicyTargetConfigurationAccessType
from msgraph_beta.generated.models.cross_tenant_access_policy_target import CrossTenantAccessPolicyTarget
from msgraph_beta.generated.models.cross_tenant_access_policy_target_type import CrossTenantAccessPolicyTargetType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CrossTenantAccessPolicyConfigurationPartner(
	tenant_restrictions = CrossTenantAccessPolicyTenantRestrictions(
		users_and_groups = CrossTenantAccessPolicyTargetConfiguration(
			access_type = CrossTenantAccessPolicyTargetConfigurationAccessType.Allowed,
			targets = [
				CrossTenantAccessPolicyTarget(
					target = "AllUsers",
					target_type = CrossTenantAccessPolicyTargetType.User,
				),
			],
		),
		applications = CrossTenantAccessPolicyTargetConfiguration(
			access_type = CrossTenantAccessPolicyTargetConfigurationAccessType.Allowed,
			targets = [
				CrossTenantAccessPolicyTarget(
					target = "Office365",
					target_type = CrossTenantAccessPolicyTargetType.Application,
				),
			],
		),
	),
)

result = await graph_client.policies.cross_tenant_access_policy.partners.by_cross_tenant_access_policy_configuration_partner_tenant_id('crossTenantAccessPolicyConfigurationPartner-tenantId').patch(request_body)


```