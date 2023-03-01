---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CalendarGroup
{
	Name = "name-value",
};
var result = await graphClient.Me.CalendarGroups["{calendarGroup-id}"].PatchAsync(requestBody);


```