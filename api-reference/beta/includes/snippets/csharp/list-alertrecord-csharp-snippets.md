---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var alertRecords = await graphClient.DeviceManagement.Monitoring.AlertRecords
	.Request()
	.GetAsync();

```