---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Groups.Delta.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Deltatoken = "sZwAFZibx-LQOdZIo1hHhmmDhHzCY0Hs6snoIHJCSIfCHdqKdWNZ2VX3kErpyna9GygROwBk-rqWWMFxJC3pw";
});


```