---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AndroidWorkProfileCustomConfiguration
{
	OdataType = "#microsoft.graph.androidWorkProfileCustomConfiguration",
	Description = "Description value",
	DisplayName = "Display Name value",
	Version = 7,
	OmaSettings = new List<OmaSetting>
	{
		new OmaSetting
		{
			OdataType = "microsoft.graph.omaSetting",
			DisplayName = "Display Name value",
			Description = "Description value",
			OmaUri = "Oma Uri value",
		},
	},
};
var result = await graphClient.DeviceManagement.DeviceConfigurations.PostAsync(requestBody);


```