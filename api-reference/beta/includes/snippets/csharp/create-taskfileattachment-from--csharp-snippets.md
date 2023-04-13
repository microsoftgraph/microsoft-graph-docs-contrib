---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachmentBase = new TaskFileAttachment
{
	Name = "smile",
	ContentBytes = Convert.FromBase64String("a0b1c76de9f7="),
	ContentType = "image/gif"
};

await graphClient.Me.Todo.Lists["{todoTaskList-id}"].Tasks["{todoTask-id}"].Attachments
	.Request()
	.AddAsync(attachmentBase);

```