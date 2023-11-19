---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.IdentityProtection.RiskyUsers.Dismiss;

var requestBody = new DismissPostRequestBody
{
	UserIds = new List<string>
	{
		"4628e7df-dff3-407c-a08f-75f08c0806dc",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.IdentityProtection.RiskyUsers.Dismiss.PostAsync(requestBody);


```