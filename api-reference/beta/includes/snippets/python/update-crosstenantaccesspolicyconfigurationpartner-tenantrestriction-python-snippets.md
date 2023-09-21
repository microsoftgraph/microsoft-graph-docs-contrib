---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = CrossTenantAccessPolicyConfigurationPartner(
	tenant_restrictions = CrossTenantAccessPolicyTenantRestrictions(
		users_and_groups = CrossTenantAccessPolicyTargetConfiguration(
			access_type = CrossTenantAccessPolicyTargetConfigurationAccessType.Allowed,
			targets = [
				CrossTenantAccessPolicyTarget(
					target = "AllUsers",
					target_type = CrossTenantAccessPolicyTargetType.User,
				),
			]
		),
		applications = CrossTenantAccessPolicyTargetConfiguration(
			access_type = CrossTenantAccessPolicyTargetConfigurationAccessType.Allowed,
			targets = [
				CrossTenantAccessPolicyTarget(
					target = "Office365",
					target_type = CrossTenantAccessPolicyTargetType.Application,
				),
			]
		),
	),
)

result = await graph_client.policies.cro_tenant_acce_policy.partners.by_partner_id('crossTenantAccessPolicyConfigurationPartner-tenantId').patch(body = request_body)


```