---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new DirectorySetting
{
	Values = new List<SettingValue>
	{
		new SettingValue
		{
			Name = "CustomBlockedWordsList",
			Value = "Contoso",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Settings["{directorySetting-id}"].PatchAsync(requestBody);


```