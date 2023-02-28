---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.Messages.Item.MicrosoftGraphCopy.CopyPostRequestBody
{
	DestinationId = "destinationId-value",
};
var result = await graphClient.Me.Messages["message-id"].MicrosoftGraphCopy.PostAsync(requestBody);


```