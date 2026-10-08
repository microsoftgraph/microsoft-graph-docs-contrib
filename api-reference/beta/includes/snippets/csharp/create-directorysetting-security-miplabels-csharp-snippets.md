---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new DirectorySetting
{
	TemplateId = "d209f6fa-3839-4d70-b83f-60b1c64d0e8f",
	Values = new List<SettingValue>
	{
		new SettingValue
		{
			Name = "EnableMIPLabels",
			Value = "true",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Settings.PostAsync(requestBody);


```