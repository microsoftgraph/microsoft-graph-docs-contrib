---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendar = new Calendar
{
	Name = "name-value",
	Color = new CalendarColor
	{
	}
};

await graphClient.Me.CalendarGroups["{id}"].Calendars
	.Request()
	.AddAsync(calendar);

```