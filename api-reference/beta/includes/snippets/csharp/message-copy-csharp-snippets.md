---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.Messages.Item.Copy.CopyPostRequestBody
{
	DestinationId = "destinationId-value",
};
var result = await graphClient.Me.Messages["{message-id}"].Copy.PostAsync(requestBody);


```