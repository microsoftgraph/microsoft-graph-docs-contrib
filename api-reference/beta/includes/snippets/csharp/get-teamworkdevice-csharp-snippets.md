---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamworkDevice = await graphClient.Teamwork.Devices["{teamworkDevice-id}"]
	.Request()
	.GetAsync();

```