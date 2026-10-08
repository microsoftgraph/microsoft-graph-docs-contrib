---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new Application
{
	DisplayName = "MyAppName",
	SignInAudience = "AzureADMultipleOrgs",
	SignInAudienceRestrictions = new AllowedTenantsAudience
	{
		OdataType = "#microsoft.graph.allowedTenantsAudience",
		IsHomeTenantAllowed = true,
		AllowedTenantIds = new List<string>
		{
			"818ce016-78c2-457c-91d7-c02c2faaa5fe",
			"c62670b0-53a1-4a38-b26c-4093cbaa510a",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Applications.PostAsync(requestBody);


```