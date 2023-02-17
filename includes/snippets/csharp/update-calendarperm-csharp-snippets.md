---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendarPermission = new CalendarPermission
{
	Role = CalendarRoleType.Write
};

await graphClient.Users["{user-id}"].Calendars["{calendar-id}"].CalendarPermissions["{calendarPermission-id}"]
	.Request()
	.UpdateAsync(calendarPermission);

```