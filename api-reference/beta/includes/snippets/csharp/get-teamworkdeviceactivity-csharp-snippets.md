---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamworkDeviceActivity = await graphClient.Teamwork.Devices["{teamworkDevice-id}"].Activity
	.Request()
	.GetAsync();

```