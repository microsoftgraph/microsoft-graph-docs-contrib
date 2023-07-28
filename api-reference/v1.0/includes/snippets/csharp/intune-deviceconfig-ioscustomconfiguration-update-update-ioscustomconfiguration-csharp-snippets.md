---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IosCustomConfiguration
{
	OdataType = "#microsoft.graph.iosCustomConfiguration",
	Description = "Description value",
	DisplayName = "Display Name value",
	Version = 7,
	PayloadName = "Payload Name value",
	PayloadFileName = "Payload File Name value",
	Payload = Convert.FromBase64String("cGF5bG9hZA=="),
};
var result = await graphClient.DeviceManagement.DeviceConfigurations["{deviceConfiguration-id}"].PatchAsync(requestBody);


```