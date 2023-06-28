---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DeviceCategory
{
	OdataType = "#microsoft.graph.deviceCategory",
	DisplayName = "Display Name value",
	Description = "Description value",
};
var result = await graphClient.DeviceManagement.DeviceCategories["{deviceCategory-id}"].PatchAsync(requestBody);


```