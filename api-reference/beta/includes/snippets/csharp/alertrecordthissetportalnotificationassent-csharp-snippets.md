---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.DeviceManagement.Monitoring.AlertRecords["{deviceManagement.alertRecord-id}"]
	.SetPortalNotificationAsSent()
	.Request()
	.PostAsync();

```