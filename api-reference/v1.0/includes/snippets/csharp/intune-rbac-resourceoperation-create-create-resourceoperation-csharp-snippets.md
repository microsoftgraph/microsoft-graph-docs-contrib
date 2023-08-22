---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ResourceOperation
{
	OdataType = "#microsoft.graph.resourceOperation",
	ResourceName = "Resource Name value",
	ActionName = "Action Name value",
	Description = "Description value",
};
var result = await graphClient.DeviceManagement.ResourceOperations.PostAsync(requestBody);


```