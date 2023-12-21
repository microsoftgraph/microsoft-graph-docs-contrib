---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new DriveItem
{
	Name = "Just some files",
	Bundle = new Bundle
	{
	},
	Children = new List<DriveItem>
	{
		new DriveItem
		{
			Id = "1234asdf",
		},
		new DriveItem
		{
			Id = "1234qwerty",
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@microsoft.graph.conflictBehavior" , "rename"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Drives["{drive-id}"].Bundles.PostAsync(requestBody);


```