---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TodoTaskList
{
	DisplayName = "Travel items",
};
var result = await graphClient.Me.Todo.Lists.PostAsync(requestBody);


```