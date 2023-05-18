---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Me.Todo.Lists["{todoTaskList-id}"].Tasks["{todoTask-id}"].Attachments["{attachmentBase-id}"].DeleteAsync();


```