---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CrossTenantIdentitySyncPolicyPartner()
user_sync_inbound = CrossTenantUserSyncInbound()
user_sync_inbound.is_sync_allowed = True


request_body.user_sync_inbound = user_sync_inbound



result = await client.policies.cro_tenant_acce_policy.partners.by_partner_id('crossTenantAccessPolicyConfigurationPartner-tenantId').identity_synchronization.patch(request_body = request_body)


```