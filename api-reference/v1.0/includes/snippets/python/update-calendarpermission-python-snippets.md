---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CalendarPermission()
request_body.role(CalendarRoleType.Write('calendarroletype.write'))




result = await client.users.by_user_id('user-id').calendar.calendar_permissions.by_calendar_permission_id('calendarPermission-id').patch(request_body = request_body)


```