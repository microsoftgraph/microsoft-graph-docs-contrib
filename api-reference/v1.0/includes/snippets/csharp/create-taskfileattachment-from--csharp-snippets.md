---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TaskFileAttachment
{
	OdataType = "#microsoft.graph.taskFileAttachment",
	Name = "smile",
	ContentBytes = Convert.FromBase64String("a0b1c76de9f7="),
	ContentType = "image/gif",
};
var result = await graphClient.Me.Todo.Lists["{todoTaskList-id}"].Tasks["{todoTask-id}"].Attachments.PostAsync(requestBody);


```