---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamworkDeviceOperation = await graphClient.Teamwork.Devices["{teamworkDevice-id}"].Operations["{teamworkDeviceOperation-id}"]
	.Request()
	.GetAsync();

```