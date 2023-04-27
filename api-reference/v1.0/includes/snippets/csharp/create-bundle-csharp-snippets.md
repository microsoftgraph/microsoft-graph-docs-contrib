---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

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
var result = await graphClient.Drives["{drive-id}"].Bundles.PostAsync(requestBody);


```