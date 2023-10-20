---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = CrossTenantAccessPolicyConfigurationPartner(
	inbound_trust = CrossTenantAccessPolicyInboundTrust(
		is_mfa_accepted = True,
		is_compliant_device_accepted = True,
		is_hybrid_azure_a_d_joined_device_accepted = True,
	),
)

result = await graph_client.policies.cro_tenant_acce_policy.partners.by_partner_id('crossTenantAccessPolicyConfigurationPartner-tenantId').patch(body = request_body)


```