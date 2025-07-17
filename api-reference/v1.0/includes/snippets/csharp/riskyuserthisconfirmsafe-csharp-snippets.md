---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.IdentityProtection.RiskyUsers.ConfirmSafe;

var requestBody = new ConfirmSafePostRequestBody
{
	UserIds = new List<string>
	{
		"5a0c76d2-cb57-4ece-9bc1-c323178f116a",
		"96609214-09ef-4f80-9d4a-ace5fceecaec",
		"05020696-4eb8-45a3-918f-8f8bb7ad6015",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.IdentityProtection.RiskyUsers.ConfirmSafe.PostAsync(requestBody);


```