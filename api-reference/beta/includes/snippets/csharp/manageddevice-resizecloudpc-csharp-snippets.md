---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var targetServicePlanId = "30d0e128-de93-41dc-89ec-33d84bb662a0";

await graphClient.DeviceManagement.ManagedDevices["{managedDevice-id}"]
	.ResizeCloudPc(targetServicePlanId)
	.Request()
	.PostAsync();

```