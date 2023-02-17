---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Users["{user-id}"].Calendars["{calendar-id}"].CalendarPermissions["{calendarPermission-id}"]
	.Request()
	.DeleteAsync();

```