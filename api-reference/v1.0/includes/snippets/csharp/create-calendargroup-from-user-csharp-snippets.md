---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CalendarGroup
{
	Name = "Personal events",
};
var result = await graphClient.Me.CalendarGroups.PostAsync(requestBody);


```