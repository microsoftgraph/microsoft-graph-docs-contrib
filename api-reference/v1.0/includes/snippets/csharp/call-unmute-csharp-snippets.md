---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Communications.Calls.Item.Unmute.UnmutePostRequestBody
{
	ClientContext = "clientContext-value",
};
var result = await graphClient.Communications.Calls["{call-id}"].Unmute.PostAsync(requestBody);


```