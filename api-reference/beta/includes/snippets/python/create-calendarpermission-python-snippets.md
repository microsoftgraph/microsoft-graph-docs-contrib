---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = CalendarPermission(
	email_address = EmailAddress(
		name = "Samantha Booth",
		address = "samanthab@adatum.onmicrosoft.com",
	),
	is_inside_organization = True,
	is_removable = True,
	role = CalendarRoleType.Read,
)

result = await graph_client.users.by_user_id('user-id').calendar.calendar_permissions.post(request_body)


```