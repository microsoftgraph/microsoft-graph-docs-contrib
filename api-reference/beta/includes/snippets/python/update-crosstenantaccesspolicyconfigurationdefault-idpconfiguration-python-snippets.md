---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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