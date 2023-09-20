---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Communications.Calls.Item.Mute.MutePostRequestBody
{
	ClientContext = "clientContext-value",
};
var result = await graphClient.Communications.Calls["{call-id}"].Mute.PostAsync(requestBody);


```