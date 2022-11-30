---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var alertRule = await graphClient.DeviceManagement.Monitoring.AlertRules["{deviceManagement.alertRule-id}"]
	.Request()
	.GetAsync();

```