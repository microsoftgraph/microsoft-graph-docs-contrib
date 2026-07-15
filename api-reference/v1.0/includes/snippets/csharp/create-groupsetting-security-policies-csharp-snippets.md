---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new GroupSetting
{
	TemplateId = "7e0abea2-5c20-405f-9658-bfc9a523fd49",
	Values = new List<SettingValue>
	{
		new SettingValue
		{
			Name = "AllowToAddGuests",
			Value = "false",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Groups["{group-id}"].Settings.PostAsync(requestBody);


```