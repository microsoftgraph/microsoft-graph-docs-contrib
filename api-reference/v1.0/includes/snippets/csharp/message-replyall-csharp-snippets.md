---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.Messages.Item.ReplyAll.ReplyAllPostRequestBody
{
	Comment = "comment-value",
};
await graphClient.Me.Messages["{message-id}"].ReplyAll.PostAsync(requestBody);


```