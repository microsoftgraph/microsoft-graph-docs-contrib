---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TodoTask
{
	Title = "A new task",
	Categories = new List<string>
	{
		"Important",
	},
	LinkedResources = new List<LinkedResource>
	{
		new LinkedResource
		{
			WebUrl = "http://microsoft.com",
			ApplicationName = "Microsoft",
			DisplayName = "Microsoft",
		},
	},
};
var result = await graphClient.Me.Todo.Lists["{todoTaskList-id}"].Tasks.PostAsync(requestBody);


```