---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getPortalNotifications = await graphClient.DeviceManagement.Monitoring.AlertRecords
	.GetPortalNotifications()
	.Request()
	.GetAsync();

```