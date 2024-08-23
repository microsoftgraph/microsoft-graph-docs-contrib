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
	PasswordCredentials = new List<PasswordCredential>
	{
		new PasswordCredential
		{
			DisplayName = "Password name",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Applications.PostAsync(requestBody);


```