---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var chat = await graphClient.Users["{id}"].Teamwork.InstalledApps["{id}"].Chat
	.Request()
	.GetAsync();

```