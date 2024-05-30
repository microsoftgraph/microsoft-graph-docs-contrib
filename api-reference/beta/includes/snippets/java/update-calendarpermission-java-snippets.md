---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CalendarPermission calendarPermission = new CalendarPermission();
calendarPermission.setRole(CalendarRoleType.Write);
CalendarPermission result = graphClient.users().byUserId("{user-id}").calendar().calendarPermissions().byCalendarPermissionId("{calendarPermission-id}").patch(calendarPermission);


```