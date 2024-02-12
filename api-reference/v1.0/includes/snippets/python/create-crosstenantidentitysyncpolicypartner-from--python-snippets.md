---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.cross_tenant_identity_sync_policy_partner import CrossTenantIdentitySyncPolicyPartner
from msgraph.generated.models.cross_tenant_user_sync_inbound import CrossTenantUserSyncInbound

graph_client = GraphServiceClient(credentials, scopes)

request_body = CrossTenantIdentitySyncPolicyPartner(
	display_name = "Fabrikam",
	user_sync_inbound = CrossTenantUserSyncInbound(
		is_sync_allowed = True,
	),
)

result = await graph_client.policies.cross_tenant_access_policy.partners.by_cross_tenant_access_policy_configuration_partner_tenant_id('crossTenantAccessPolicyConfigurationPartner-tenantId').identity_synchronization.put(request_body)


```