---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var serviceAnnouncementAttachment = await graphClient.Admin.ServiceAnnouncement.Messages["{serviceUpdateMessage-id}"].Attachments["{serviceAnnouncementAttachment-id}"]
	.Request()
	.GetAsync();

```