---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachmentItem = new AttachmentItem
{
	AttachmentType = AttachmentType.File,
	Name = "scenary",
	Size = 7208534,
	IsInline = true,
	ContentId = "my_inline_picture"
};

await graphClient.Me.Messages["{message-id}"].Attachments
	.CreateUploadSession(attachmentItem)
	.Request()
	.PostAsync();

```