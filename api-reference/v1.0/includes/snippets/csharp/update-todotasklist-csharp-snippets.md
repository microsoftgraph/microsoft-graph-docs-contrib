---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TodoTaskList
{
	DisplayName = "Vacation Plan",
};
var result = await graphClient.Me.Todo.Lists["{todoTaskList-id}"].PatchAsync(requestBody);


```