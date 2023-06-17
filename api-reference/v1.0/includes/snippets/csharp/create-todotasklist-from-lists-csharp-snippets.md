---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TodoTaskList
{
	DisplayName = "Travel items",
};
var result = await graphClient.Me.Todo.Lists.PostAsync(requestBody);


```