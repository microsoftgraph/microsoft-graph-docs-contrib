---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.cross_tenant_access_policy_configuration_default import CrossTenantAccessPolicyConfigurationDefault
from msgraph.generated.models.default_invitation_redemption_identity_provider_configuration import DefaultInvitationRedemptionIdentityProviderConfiguration
from msgraph.generated.models.b2b_identity_providers_type import B2bIdentityProvidersType

graph_client = GraphServiceClient(credentials, scopes)

request_body = CrossTenantAccessPolicyConfigurationDefault(
	invitation_redemption_identity_provider_configuration = DefaultInvitationRedemptionIdentityProviderConfiguration(
		primary_identity_provider_precedence_order = [
			B2bIdentityProvidersType.ExternalFederation,
			B2bIdentityProvidersType.AzureActiveDirectory,
			B2bIdentityProvidersType.SocialIdentityProviders,
		],
		fallback_identity_provider = B2bIdentityProvidersType.DefaultConfiguredIdp,
	),
)

result = await graph_client.policies.cross_tenant_access_policy.default.patch(request_body)


```