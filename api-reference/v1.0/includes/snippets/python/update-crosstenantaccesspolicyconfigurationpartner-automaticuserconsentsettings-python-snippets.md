---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.cross_tenant_access_policy_configuration_partner import CrossTenantAccessPolicyConfigurationPartner
from msgraph.generated.models.inbound_outbound_policy_configuration import InboundOutboundPolicyConfiguration

graph_client = GraphServiceClient(credentials, scopes)

request_body = CrossTenantAccessPolicyConfigurationPartner(
	automatic_user_consent_settings = InboundOutboundPolicyConfiguration(
		inbound_allowed = True,
		outbound_allowed = True,
	),
)

result = await graph_client.policies.cross_tenant_access_policy.partners.by_cross_tenant_access_policy_configuration_partner_tenant_id('crossTenantAccessPolicyConfigurationPartner-tenantId').patch(request_body)


```