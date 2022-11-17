---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var comment = "I will probably be able to make it.";

var sendResponse = true;

await graphClient.Me.Events["{event-id}"]
	.TentativelyAccept(comment,sendResponse,null)
	.Request()
	.PostAsync();

```