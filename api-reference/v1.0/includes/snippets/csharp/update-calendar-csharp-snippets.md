---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Calendar
{
	Name = "Social events",
};
var result = await graphClient.Me.Calendar.PatchAsync(requestBody);


```