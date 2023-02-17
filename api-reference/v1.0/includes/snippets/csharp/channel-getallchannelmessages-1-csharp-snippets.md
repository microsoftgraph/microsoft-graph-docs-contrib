---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getAllMessages = await graphClient.Teams["{team-id}"].Channels
	.GetAllMessages()
	.Request()
	.Filter("lastModifiedDateTime gt 2019-11-01T00:00:00Z and lastModifiedDateTime lt 2021-11-01T00:00:00Z")
	.GetAsync();

```