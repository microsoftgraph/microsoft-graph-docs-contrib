---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var crossTenantAccessPolicyConfigurationPartner = new CrossTenantAccessPolicyConfigurationPartner
{
	AutomaticUserConsentSettings = new InboundOutboundPolicyConfiguration
	{
		InboundAllowed = true,
		OutboundAllowed = true
	}
};

await graphClient.Policies.CrossTenantAccessPolicy.Partners["{crossTenantAccessPolicyConfigurationPartner-id}"]
	.Request()
	.UpdateAsync(crossTenantAccessPolicyConfigurationPartner);

```