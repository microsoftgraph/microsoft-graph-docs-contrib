---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.Events.Item.Accept.AcceptPostRequestBody
{
	Comment = "comment-value",
	SendResponse = true,
};
await graphClient.Me.Events["{event-id}"].Accept.PostAsync(requestBody);


```