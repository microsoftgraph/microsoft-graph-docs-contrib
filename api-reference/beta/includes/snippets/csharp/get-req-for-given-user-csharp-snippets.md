---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.IdentityGovernance.EntitlementManagement.AccessPackages.Item.GetApplicablePolicyRequirements;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new GetApplicablePolicyRequirementsPostRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"subject" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"objectId", new UntypedString("5acd375c-8acb-45de-a958-fa0dd89259ad")
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages["{accessPackage-id}"].GetApplicablePolicyRequirements.PostAsGetApplicablePolicyRequirementsPostResponseAsync(requestBody);


```