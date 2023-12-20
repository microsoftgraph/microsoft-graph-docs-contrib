---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Policies.CrossTenantAccessPolicy.Templates.MultiTenantOrganizationPartnerConfiguration.PatchAsync(requestBody);


```