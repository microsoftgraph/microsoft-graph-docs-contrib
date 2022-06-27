---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamworkDeviceConfiguration = await graphClient.Teamwork.Devices["{teamworkDevice-id}"].Configuration
	.Request()
	.GetAsync();

```