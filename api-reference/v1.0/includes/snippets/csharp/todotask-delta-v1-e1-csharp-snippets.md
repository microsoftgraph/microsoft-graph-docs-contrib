---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Me.Todo.Lists["{todoTaskList-id}"].Tasks.Delta.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Deltatoken = "w0vf2jHg2mBXU-I2AK0FSWl0dopNtG8u5YoM";
});


```