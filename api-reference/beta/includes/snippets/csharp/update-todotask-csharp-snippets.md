---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TodoTask
{
	DueDateTime = new DateTimeTimeZone
	{
		DateTime = "2020-07-25T16:00:00",
		TimeZone = "Eastern Standard Time",
	},
};
var result = await graphClient.Me.Todo.Lists["{todoTaskList-id}"].Tasks["{todoTask-id}"].PatchAsync(requestBody);


```