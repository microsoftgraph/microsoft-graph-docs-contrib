---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.cross_tenant_access_policy_configuration_partner import CrossTenantAccessPolicyConfigurationPartner
from msgraph.generated.models.inbound_outbound_policy_configuration import InboundOutboundPolicyConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CrossTenantAccessPolicyConfigurationPartner(
	automatic_user_consent_settings = InboundOutboundPolicyConfiguration(
		inbound_allowed = True,
		outbound_allowed = True,
	),
)

result = await graph_client.policies.cross_tenant_access_policy.partners.by_cross_tenant_access_policy_configuration_partner_tenant_id('crossTenantAccessPolicyConfigurationPartner-tenantId').patch(request_body)


```