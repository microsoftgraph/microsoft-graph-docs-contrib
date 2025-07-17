---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new Extension
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"theme" , "light"
		},
		{
			"color" , "purple"
		},
		{
			"lang" , "Swahili"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Extensions["{extension-id}"].PatchAsync(requestBody);


```