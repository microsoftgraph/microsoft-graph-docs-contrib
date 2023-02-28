---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Communications.Calls.Item.MicrosoftGraphReject.RejectPostRequestBody
{
	Reason = RejectReason.Busy,
};
await graphClient.Communications.Calls["call-id"].MicrosoftGraphReject.PostAsync(requestBody);


```