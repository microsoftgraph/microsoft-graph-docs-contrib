---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Communications.Calls.Item.Reject.RejectPostRequestBody
{
	Reason = RejectReason.Busy,
};
await graphClient.Communications.Calls["{call-id}"].Reject.PostAsync(requestBody);


```