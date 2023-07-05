---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TargetedManagedAppConfiguration
{
	OdataType = "#microsoft.graph.targetedManagedAppConfiguration",
	DisplayName = "Display Name value",
	Description = "Description value",
	Version = "Version value",
	CustomSettings = new List<KeyValuePair>
	{
		new KeyValuePair
		{
			OdataType = "microsoft.graph.keyValuePair",
			Name = "Name value",
			Value = "Value value",
		},
	},
	DeployedAppCount = 0,
	IsAssigned = true,
};
var result = await graphClient.DeviceAppManagement.TargetedManagedAppConfigurations.PostAsync(requestBody);


```