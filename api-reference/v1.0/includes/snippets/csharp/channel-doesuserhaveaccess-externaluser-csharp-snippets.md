---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var boolean = await graphClient.Teams["{team-id}"].Channels["{channel-id}"]
	.DoesUserHaveAccess("62855810-484b-4823-9e01-60667f8b12ae","57fb72d0-d811-46f4-8947-305e6072eaa5")
	.Request()
	.GetAsync();

```