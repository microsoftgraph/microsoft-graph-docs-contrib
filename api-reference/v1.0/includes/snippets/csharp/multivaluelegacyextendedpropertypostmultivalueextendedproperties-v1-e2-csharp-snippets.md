---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new Message
{
	MultiValueExtendedProperties = new List<MultiValueLegacyExtendedProperty>
	{
		new MultiValueLegacyExtendedProperty
		{
			Id = "StringArray {66f5a359-4659-4830-9070-00049ec6ac6e} Name Palette",
			Value = new List<string>
			{
				"Green",
				"Aqua",
				"Blue",
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Messages["{message-id}"].PatchAsync(requestBody);


```