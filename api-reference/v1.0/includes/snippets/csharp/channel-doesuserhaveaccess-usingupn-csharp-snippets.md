---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var boolean = await graphClient.Teams["{team-id}"].Channels["{channel-id}"]
	.DoesUserHaveAccess("john.doe@contoso.com")
	.Request()
	.GetAsync();

```