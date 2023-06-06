---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CrossTenantAccessPolicyConfigurationPartner()
inbound_trust = CrossTenantAccessPolicyInboundTrust()
inbound_trust.is_mfa_accepted = True

inbound_trust.is_compliant_device_accepted = True

inbound_trust.is_hybrid_azure_a_d_joined_device_accepted = True


request_body.inbound_trust = inbound_trust



result = await client.policies.cro_tenant_acce_policy.partners.by_partner_id('crossTenantAccessPolicyConfigurationPartner-tenantId').patch(request_body = request_body)


```