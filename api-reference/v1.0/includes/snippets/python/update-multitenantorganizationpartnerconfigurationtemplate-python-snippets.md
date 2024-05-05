---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.multi_tenant_organization_partner_configuration_template import MultiTenantOrganizationPartnerConfigurationTemplate
from msgraph.generated.models.cross_tenant_access_policy_inbound_trust import CrossTenantAccessPolicyInboundTrust
from msgraph.generated.models.inbound_outbound_policy_configuration import InboundOutboundPolicyConfiguration

graph_client = GraphServiceClient(credentials, scopes)

request_body = MultiTenantOrganizationPartnerConfigurationTemplate(
	inbound_trust = CrossTenantAccessPolicyInboundTrust(
		is_mfa_accepted = True,
		is_compliant_device_accepted = True,
		is_hybrid_azure_a_d_joined_device_accepted = True,
	),
	automatic_user_consent_settings = InboundOutboundPolicyConfiguration(
		inbound_allowed = True,
		outbound_allowed = True,
	),
	template_application_level = TemplateApplicationLevel.NewPartners | TemplateApplicationLevel.ExistingPartners,
)

result = await graph_client.policies.cross_tenant_access_policy.templates.multi_tenant_organization_partner_configuration.patch(request_body)


```