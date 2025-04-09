---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.cross_tenant_access_policy_configuration_default import CrossTenantAccessPolicyConfigurationDefault
from msgraph_beta.generated.models.default_invitation_redemption_identity_provider_configuration import DefaultInvitationRedemptionIdentityProviderConfiguration
from msgraph_beta.generated.models.b2b_identity_providers_type import B2bIdentityProvidersType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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