---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var alertRules = await graphClient.DeviceManagement.Monitoring.AlertRules
	.Request()
	.GetAsync();

```