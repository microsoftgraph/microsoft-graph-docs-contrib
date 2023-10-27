---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.Todo.Lists.Item.Tasks.Item.Attachments.CreateUploadSession.CreateUploadSessionPostRequestBody
{
	AttachmentInfo = new AttachmentInfo
	{
		AttachmentType = AttachmentType.File,
		Name = "flower",
		Size = 3483322L,
	},
};
var result = await graphClient.Me.Todo.Lists["{todoTaskList-id}"].Tasks["{todoTask-id}"].Attachments.CreateUploadSession.PostAsync(requestBody);


```