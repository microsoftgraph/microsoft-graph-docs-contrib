---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Teams["{team-id}"].IncomingChannels["{channel-id}"].Reference
	.Request()
	.DeleteAsync();

```