---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TodoTaskList
{
	DisplayName = "Vacation Plan",
};
var result = await graphClient.Me.Todo.Lists["{todoTaskList-id}"].PatchAsync(requestBody);


```