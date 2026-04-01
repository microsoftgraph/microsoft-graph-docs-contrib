---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new CrossTenantAccessPolicyConfigurationPartner
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"m365CollaborationInbound" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"users", new UntypedObject(new Dictionary<string, UntypedNode>
					{
						{
							"accessType", new UntypedString("allowed")
						},
						{
							"targets", new UntypedArray(new List<UntypedNode>
							{
								new UntypedObject(new Dictionary<string, UntypedNode>
								{
									{
										"target", new UntypedString("AllUsers")
									},
									{
										"targetType", new UntypedString("user")
									},
								}),
							})
						},
					})
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Policies.CrossTenantAccessPolicy.Partners["{crossTenantAccessPolicyConfigurationPartner-tenantId}"].PatchAsync(requestBody);


```