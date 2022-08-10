---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachmentInfo = new AttachmentInfo
{
	AttachmentType = AttachmentType.File,
	Name = "flower",
	Size = 3483322
};

await graphClient.Me.Todo.Lists["{todoTaskList-id}"].Tasks["{todoTask-id}"].Attachments
	.CreateUploadSession(attachmentInfo)
	.Request()
	.PostAsync();

```