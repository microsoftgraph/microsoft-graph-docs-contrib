---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.cross_tenant_access_policy_configuration_partner import CrossTenantAccessPolicyConfigurationPartner
from msgraph.generated.models.cross_tenant_access_policy_tenant_restrictions import CrossTenantAccessPolicyTenantRestrictions
from msgraph.generated.models.cross_tenant_access_policy_target_configuration import CrossTenantAccessPolicyTargetConfiguration
from msgraph.generated.models.cross_tenant_access_policy_target import CrossTenantAccessPolicyTarget

graph_client = GraphServiceClient(credentials, scopes)

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