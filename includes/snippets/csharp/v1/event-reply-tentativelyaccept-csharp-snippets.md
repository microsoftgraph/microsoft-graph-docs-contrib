---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Me.Events.Item.TentativelyAccept;

var requestBody = new TentativelyAcceptPostRequestBody
{
	Comment = "I will probably be able to make it.",
	SendResponse = true,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Me.Events["{event-id}"].TentativelyAccept.PostAsync(requestBody);


```