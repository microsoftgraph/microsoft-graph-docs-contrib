---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var alertRecord = await graphClient.DeviceManagement.Monitoring.AlertRecords["{deviceManagement.alertRecord-id}"]
	.Request()
	.GetAsync();

```