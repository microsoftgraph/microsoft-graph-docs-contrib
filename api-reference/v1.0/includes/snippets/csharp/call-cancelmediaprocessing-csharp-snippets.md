---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Communications.Calls.Item.CancelMediaProcessing;

var requestBody = new CancelMediaProcessingPostRequestBody
{
	ClientContext = "clientContext-value",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Communications.Calls["{call-id}"].CancelMediaProcessing.PostAsync(requestBody);


```