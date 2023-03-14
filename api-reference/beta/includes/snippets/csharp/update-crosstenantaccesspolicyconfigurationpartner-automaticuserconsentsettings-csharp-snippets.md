---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CrossTenantAccessPolicyConfigurationPartner
{
	AutomaticUserConsentSettings = new InboundOutboundPolicyConfiguration
	{
		InboundAllowed = true,
		OutboundAllowed = true,
	},
};
var result = await graphClient.Policies.CrossTenantAccessPolicy.Partners["{crossTenantAccessPolicyConfigurationPartner-tenantId}"].PatchAsync(requestBody);


```