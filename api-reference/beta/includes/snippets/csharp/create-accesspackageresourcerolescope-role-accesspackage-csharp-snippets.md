---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new AccessPackageResourceRoleScope
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"role" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"originId", new UntypedString("Eligible")
				},
				{
					"displayName", new UntypedString("Eligible Member")
				},
				{
					"originSystem", new UntypedString("DirectoryRole")
				},
				{
					"resource", new UntypedObject(new Dictionary<string, UntypedNode>
					{
						{
							"id", new UntypedString("ea036095-57a6-4c90-a640-013edf151eb1")
						},
					})
				},
			})
		},
		{
			"scope" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"description", new UntypedString("Root Scope")
				},
				{
					"displayName", new UntypedString("Root")
				},
				{
					"isRootScope", new UntypedBoolean(true)
				},
				{
					"originSystem", new UntypedString("DirectoryRole")
				},
				{
					"originId", new UntypedString("c4e39bd9-1100-46d3-8c65-fb160da0071f")
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages["{accessPackage-id}"].AccessPackageResourceRoleScopes.PostAsync(requestBody);


```