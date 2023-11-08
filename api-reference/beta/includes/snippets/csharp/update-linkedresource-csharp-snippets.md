---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new LinkedResource
{
	OdataType = "#microsoft.graph.linkedResource",
	WebUrl = "http://microsoft.com",
	ApplicationName = "Microsoft",
	DisplayName = "Microsoft",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Todo.Lists["{todoTaskList-id}"].Tasks["{todoTask-id}"].LinkedResources["{linkedResource-id}"].PatchAsync(requestBody);


```