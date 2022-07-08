---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var incomingChannels = await graphClient.Teams["{team-id}"].IncomingChannels
	.Request()
	.GetAsync();

```