---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.RiskyUsers.ConfirmCompromised;

var requestBody = new ConfirmCompromisedPostRequestBody
{
	UserIds = new List<string>
	{
		"29f270bb-4d23-4f68-8a57-dc73dc0d4caf",
		"20f91ec9-d140-4d90-9cd9-f618587a1471",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.RiskyUsers.ConfirmCompromised.PostAsync(requestBody);


```