---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Calendar
{
	Name = "Social events",
};
var result = await graphClient.Me.Calendar.PatchAsync(requestBody);


```