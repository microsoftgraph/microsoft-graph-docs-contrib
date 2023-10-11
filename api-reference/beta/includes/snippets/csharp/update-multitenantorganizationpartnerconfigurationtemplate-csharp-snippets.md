---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new MultiTenantOrganizationPartnerConfigurationTemplate
{
	InboundTrust = new CrossTenantAccessPolicyInboundTrust
	{
		IsMfaAccepted = true,
		IsCompliantDeviceAccepted = true,
		IsHybridAzureADJoinedDeviceAccepted = true,
	},
	AutomaticUserConsentSettings = new InboundOutboundPolicyConfiguration
	{
		InboundAllowed = true,
		OutboundAllowed = true,
	},
	TemplateApplicationLevel = TemplateApplicationLevel.NewPartners | TemplateApplicationLevel.ExistingPartners,
};
var result = await graphClient.Policies.CrossTenantAccessPolicy.Templates.MultiTenantOrganizationPartnerConfiguration.PatchAsync(requestBody);


```