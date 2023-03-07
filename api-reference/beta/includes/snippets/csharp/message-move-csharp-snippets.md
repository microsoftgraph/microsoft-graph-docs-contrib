---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.Messages.Item.Move.MovePostRequestBody
{
	DestinationId = "deleteditems",
};
var result = await graphClient.Me.Messages["{message-id}"].Move.PostAsync(requestBody);


```