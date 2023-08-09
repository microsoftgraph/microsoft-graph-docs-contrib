---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DriveItem
{
	Name = "My Day at the Beach",
	Bundle = new Bundle
	{
		Album = new Album
		{
		},
	},
	Children = new List<DriveItem>
	{
		new DriveItem
		{
			Id = "1234asdf",
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@microsoft.graph.conflictBehavior" , "rename"
		},
	},
};
var result = await graphClient.Drives["{drive-id}"].Bundles.PostAsync(requestBody);


```