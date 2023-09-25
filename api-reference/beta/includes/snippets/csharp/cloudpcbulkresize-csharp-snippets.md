---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.CloudPCs.BulkResize.BulkResizePostRequestBody
{
	CloudPcIds = new List<string>
	{
		"30d0e128-de93-41dc-89ec-33d84bb662a0",
		"7c82a3e3-9459-44e4-94d9-b92f93bf78dd",
	},
	TargetServicePlanId = "662009bc-7732-4f6f-8726-25883518b33e",
};
var result = await graphClient.DeviceManagement.VirtualEndpoint.CloudPCs.BulkResize.PostAsync(requestBody);


```