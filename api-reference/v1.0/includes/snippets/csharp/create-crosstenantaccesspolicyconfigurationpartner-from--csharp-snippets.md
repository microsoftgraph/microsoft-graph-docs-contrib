---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new CrossTenantAccessPolicyConfigurationPartner
{
	TenantId = "3d0f5dec-5d3d-455c-8016-e2af1ae4d31a",
	B2bDirectConnectOutbound = new CrossTenantAccessPolicyB2BSetting
	{
		UsersAndGroups = new CrossTenantAccessPolicyTargetConfiguration
		{
			AccessType = CrossTenantAccessPolicyTargetConfigurationAccessType.Blocked,
			Targets = new List<CrossTenantAccessPolicyTarget>
			{
				new CrossTenantAccessPolicyTarget
				{
					Target = "6f546279-4da5-4b53-a095-09ea0cef9971",
					TargetType = CrossTenantAccessPolicyTargetType.Group,
				},
			},
		},
	},
	B2bDirectConnectInbound = new CrossTenantAccessPolicyB2BSetting
	{
		Applications = new CrossTenantAccessPolicyTargetConfiguration
		{
			AccessType = CrossTenantAccessPolicyTargetConfigurationAccessType.Allowed,
			Targets = new List<CrossTenantAccessPolicyTarget>
			{
				new CrossTenantAccessPolicyTarget
				{
					Target = "Office365",
					TargetType = CrossTenantAccessPolicyTargetType.Application,
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Policies.CrossTenantAccessPolicy.Partners.PostAsync(requestBody);


```