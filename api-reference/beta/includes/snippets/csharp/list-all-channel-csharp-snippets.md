---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var allChannels = await graphClient.Teams["{team-id}"].AllChannels
	.Request()
	.GetAsync();

```