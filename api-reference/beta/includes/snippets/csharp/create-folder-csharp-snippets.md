---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DriveItem
{
	Name = "New Folder",
	Folder = new Folder
	{
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@microsoft.graph.conflictBehavior" , "rename"
		},
	},
};
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Children.PostAsync(requestBody);


```