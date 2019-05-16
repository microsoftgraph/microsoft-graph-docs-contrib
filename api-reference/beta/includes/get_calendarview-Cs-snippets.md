---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendarView = await graphClient.Me.CalendarView
	.Request()
	.GetAsync();

```