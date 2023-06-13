---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Communications.Calls.Item.Reject.RejectPostRequestBody
{
	Reason = RejectReason.None,
};
await graphClient.Communications.Calls["{call-id}"].Reject.PostAsync(requestBody);


```