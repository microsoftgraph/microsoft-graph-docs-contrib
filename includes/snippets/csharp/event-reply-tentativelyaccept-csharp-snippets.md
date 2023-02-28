---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.Events.Item.MicrosoftGraphTentativelyAccept.TentativelyAcceptPostRequestBody
{
	Comment = "I will probably be able to make it.",
	SendResponse = true,
};
await graphClient.Me.Events["event-id"].MicrosoftGraphTentativelyAccept.PostAsync(requestBody);


```