---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachments = await graphClient.Admin.ServiceAnnouncement.Messages["{serviceUpdateMessage-id}"].Attachments
	.Request()
	.GetAsync();

```