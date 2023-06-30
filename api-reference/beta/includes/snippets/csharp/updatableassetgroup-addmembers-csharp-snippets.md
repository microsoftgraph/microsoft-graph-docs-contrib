---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Admin.Windows.Updates.UpdatableAssets.Item.MicrosoftGraphWindowsUpdatesAddMembers.AddMembersPostRequestBody
{
	Assets = new List<Microsoft.Graph.Beta.Models.WindowsUpdates.UpdatableAsset>
	{
		new Microsoft.Graph.Beta.Models.WindowsUpdates.AzureADDevice
		{
			OdataType = "#microsoft.graph.windowsUpdates.azureADDevice",
			Id = "String (identifier)",
		},
	},
};
await graphClient.Admin.Windows.Updates.UpdatableAssets["{updatableAsset-id}"].MicrosoftGraphWindowsUpdatesAddMembers.PostAsync(requestBody);


```