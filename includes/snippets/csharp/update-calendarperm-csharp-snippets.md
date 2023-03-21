---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CalendarPermission
{
	Role = CalendarRoleType.Write,
};
var result = await graphClient.Users["{user-id}"].Calendars["{calendar-id}"].CalendarPermissions["{calendarPermission-id}"].PatchAsync(requestBody);


```