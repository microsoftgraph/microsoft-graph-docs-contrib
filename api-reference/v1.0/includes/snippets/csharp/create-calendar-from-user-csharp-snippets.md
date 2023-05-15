---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Calendar
{
	Name = "Volunteer",
};
var result = await graphClient.Me.Calendars.PostAsync(requestBody);


```