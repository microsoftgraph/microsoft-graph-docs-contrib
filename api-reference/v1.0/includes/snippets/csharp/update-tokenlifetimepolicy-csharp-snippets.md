---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TokenLifetimePolicy
{
	Definition = new List<string>
	{
		"{\"TokenLifetimePolicy\":{\"Version\":1,\"AccessTokenLifetime\":\"5:30:00\"}}",
	},
	DisplayName = "Contoso token lifetime policy",
	IsOrganizationDefault = true,
};
var result = await graphClient.Policies.TokenLifetimePolicies["{tokenLifetimePolicy-id}"].PatchAsync(requestBody);


```