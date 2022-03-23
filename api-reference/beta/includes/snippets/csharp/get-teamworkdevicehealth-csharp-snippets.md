---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamworkDeviceHealth = await graphClient.Teamwork.Devices["{teamworkDevice-id}"].Health
	.Request()
	.GetAsync();

```