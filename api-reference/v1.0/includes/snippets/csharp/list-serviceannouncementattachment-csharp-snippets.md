---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var stream = await graphClient.Admin.ServiceAnnouncement.Messages["{serviceUpdateMessage-id}"].AttachmentsArchive
	.Request()
	.GetAsync();

```