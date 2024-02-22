---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.cross_tenant_access_policy_configuration_partner import CrossTenantAccessPolicyConfigurationPartner
from msgraph.generated.models.cross_tenant_access_policy_inbound_trust import CrossTenantAccessPolicyInboundTrust

graph_client = GraphServiceClient(credentials, scopes)

request_body = CrossTenantAccessPolicyConfigurationPartner(
	inbound_trust = CrossTenantAccessPolicyInboundTrust(
		is_mfa_accepted = True,
		is_compliant_device_accepted = True,
		is_hybrid_azure_a_d_joined_device_accepted = True,
	),
)

result = await graph_client.policies.cross_tenant_access_policy.partners.by_cross_tenant_access_policy_configuration_partner_tenant_id('crossTenantAccessPolicyConfigurationPartner-tenantId').patch(request_body)


```