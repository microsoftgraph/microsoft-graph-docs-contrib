---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = CrossTenantIdentitySyncPolicyPartner(
	user_sync_inbound = CrossTenantUserSyncInbound(
		is_sync_allowed = True,
	),
)

result = await graph_client.policies.cro_tenant_acce_policy.partners.by_partner_id('crossTenantAccessPolicyConfigurationPartner-tenantId').identity_synchronization.patch(request_body = request_body)


```