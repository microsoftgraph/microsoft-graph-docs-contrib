---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new Application
{
	IdentifierUris = new List<string>
	{
		"https://contosoiwaapp-contoso.msappproxy.net",
	},
	Web = new WebApplication
	{
		RedirectUris = new List<string>
		{
			"https://contosoiwaapp-contoso.msappproxy.net",
		},
		HomePageUrl = "https://contosoiwaapp-contoso.msappproxy.net",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Applications["{application-id}"].PatchAsync(requestBody);


```