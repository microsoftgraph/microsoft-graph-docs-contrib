---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new LinkedResource
{
	OdataType = "#microsoft.graph.linkedResource",
	WebUrl = "http://microsoft.com",
	ApplicationName = "Microsoft",
	DisplayName = "Microsoft",
};
var result = await graphClient.Me.Todo.Lists["{todoTaskList-id}"].Tasks["{todoTask-id}"].LinkedResources["{linkedResource-id}"].PatchAsync(requestBody);


```