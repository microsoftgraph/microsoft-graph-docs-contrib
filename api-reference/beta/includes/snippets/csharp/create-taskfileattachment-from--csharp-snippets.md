---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AttachmentBase
{
	OdataType = "#microsoft.graph.taskFileAttachment",
	Name = "smile",
	ContentType = "image/gif",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"contentBytes" , "a0b1c76de9f7="
		},
	},
};
var result = await graphClient.Me.Todo.Lists["{todoTaskList-id}"].Tasks["{todoTask-id}"].Attachments.PostAsync(requestBody);


```