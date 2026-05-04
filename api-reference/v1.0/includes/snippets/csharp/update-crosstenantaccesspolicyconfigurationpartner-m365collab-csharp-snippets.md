---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new CrossTenantAccessPolicyConfigurationPartner
{
	M365CollaborationInbound = new CrossTenantAccessPolicyM365CollaborationInboundSetting
	{
		Users = new CrossTenantAccessPolicyTargetConfiguration
		{
			AccessType = CrossTenantAccessPolicyTargetConfigurationAccessType.Allowed,
			Targets = new List<CrossTenantAccessPolicyTarget>
			{
				new CrossTenantAccessPolicyTarget
				{
					Target = "AllUsers",
					TargetType = CrossTenantAccessPolicyTargetType.User,
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Policies.CrossTenantAccessPolicy.Partners["{crossTenantAccessPolicyConfigurationPartner-tenantId}"].PatchAsync(requestBody);


```