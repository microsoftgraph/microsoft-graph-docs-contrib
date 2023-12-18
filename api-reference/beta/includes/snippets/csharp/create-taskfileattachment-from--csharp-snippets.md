---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new TaskFileAttachment
{
	OdataType = "#microsoft.graph.taskFileAttachment",
	Name = "smile",
	ContentBytes = Convert.FromBase64String("a0b1c76de9f7="),
	ContentType = "image/gif",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Todo.Lists["{todoTaskList-id}"].Tasks["{todoTask-id}"].Attachments.PostAsync(requestBody);


```