---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new PhotoUpdateSettings
{
	AllowedRoles = new List<string>
	{
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"source" , "cloud"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.People.PhotoUpdateSettings.PatchAsync(requestBody);


```