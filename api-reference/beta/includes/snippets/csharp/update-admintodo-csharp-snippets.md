---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AdminTodo
{
	OdataType = "#microsoft.graph.adminTodo",
	Settings = new TodoSettings
	{
		OdataType = "microsoft.graph.todoSettings",
		IsPushNotificationEnabled = true,
		IsExternalJoinEnabled = false,
		IsExternalShareEnabled = true,
	},
};
var result = await graphClient.Admin.Todo.PatchAsync(requestBody);


```