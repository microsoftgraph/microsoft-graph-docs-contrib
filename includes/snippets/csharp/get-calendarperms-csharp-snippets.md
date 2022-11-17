---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendarPermissions = await graphClient.Users["{user-id}"].Calendar.CalendarPermissions
	.Request()
	.GetAsync();

```