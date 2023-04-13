---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var operations = await graphClient.Teamwork.Devices["{teamworkDevice-id}"].Operations
	.Request()
	.GetAsync();

```