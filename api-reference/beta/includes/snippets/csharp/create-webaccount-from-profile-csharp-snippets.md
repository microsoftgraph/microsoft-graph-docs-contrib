---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new WebAccount
{
	Description = "My Github contributions!",
	UserId = "innocenty.popov",
	Service = new ServiceInformation
	{
		Name = "GitHub",
		WebUrl = "https://github.com",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Profile.WebAccounts.PostAsync(requestBody);


```