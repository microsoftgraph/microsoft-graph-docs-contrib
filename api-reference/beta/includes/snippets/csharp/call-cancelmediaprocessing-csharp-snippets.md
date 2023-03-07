---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Communications.Calls.Item.CancelMediaProcessing.CancelMediaProcessingPostRequestBody
{
	ClientContext = "clientContext-value",
};
var result = await graphClient.Communications.Calls["{call-id}"].CancelMediaProcessing.PostAsync(requestBody);


```