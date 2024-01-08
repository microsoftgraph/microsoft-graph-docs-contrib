---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = MultiTenantOrganizationIdentitySyncPolicyTemplate(
	template_application_level = TemplateApplicationLevel.NewPartners | TemplateApplicationLevel.ExistingPartners,
	user_sync_inbound = CrossTenantUserSyncInbound(
		is_sync_allowed = True,
	),
)

result = await graph_client.policies.cross_tenant_access_policy.templates.multi_tenant_organization_identity_synchronization.patch(request_body)


```