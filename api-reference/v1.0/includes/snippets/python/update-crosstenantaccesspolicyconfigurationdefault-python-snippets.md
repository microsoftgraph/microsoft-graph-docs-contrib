---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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