---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Communications.Calls.Item.SubscribeToTone.SubscribeToTonePostRequestBody
{
	ClientContext = "fd1c7836-4d84-4e24-b6aa-23188688cc54",
};
var result = await graphClient.Communications.Calls["{call-id}"].SubscribeToTone.PostAsync(requestBody);


```