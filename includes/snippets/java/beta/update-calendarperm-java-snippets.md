---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CalendarPermission calendarPermission = new CalendarPermission();
calendarPermission.role = CalendarRoleType.WRITE;

graphClient.users("AlexW@contoso.OnMicrosoft.com").calendars("AAMkADAwAABf02bAAAA=").calendarPermissions("L289RXhjaGFuZ2VMYWJQWRlbGVW")
	.buildRequest()
	.patch(calendarPermission);

```