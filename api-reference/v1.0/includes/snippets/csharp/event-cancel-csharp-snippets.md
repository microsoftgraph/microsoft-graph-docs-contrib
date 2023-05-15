---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.Events.Item.Cancel.CancelPostRequestBody
{
	Comment = "Cancelling for this week due to all hands",
};
await graphClient.Me.Events["{event-id}"].Cancel.PostAsync(requestBody);


```