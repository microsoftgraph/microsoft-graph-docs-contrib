---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var boolean = await graphClient.Teams["{team-id}"].Channels["{channel-id}"]
	.DoesUserHaveAccess("6285581f-484b-4845-9e01-60667f8b12ae")
	.Request()
	.GetAsync();

```