---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new AccessPackage
{
	DisplayName = "Marketing Campaign",
	Description = "Access to resources for the campaign",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"catalogId" , "cec5d6ab-c75d-47c0-9c1c-92e89f66e384"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages.PostAsync(requestBody);


```