---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.Messages.Item.MicrosoftGraphMove.MovePostRequestBody
{
	DestinationId = "deleteditems",
};
var result = await graphClient.Me.Messages["message-id"].MicrosoftGraphMove.PostAsync(requestBody);


```