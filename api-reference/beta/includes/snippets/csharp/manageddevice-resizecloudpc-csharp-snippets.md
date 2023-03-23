---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.DeviceManagement.ManagedDevices.Item.ResizeCloudPc.ResizeCloudPcPostRequestBody
{
	TargetServicePlanId = "30d0e128-de93-41dc-89ec-33d84bb662a0",
};
await graphClient.DeviceManagement.ManagedDevices["{managedDevice-id}"].ResizeCloudPc.PostAsync(requestBody);


```