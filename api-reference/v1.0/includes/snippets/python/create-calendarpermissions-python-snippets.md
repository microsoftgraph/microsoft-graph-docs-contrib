---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CalendarPermission()
email_address = EmailAddress()
email_address.name = 'Samantha Booth'

email_address.address = 'samanthab@adatum.onmicrosoft.com'


request_body.email_address = email_address
request_body.is_inside_organization = True

request_body.is_removable = True

request_body.role(CalendarRoleType.Read('calendarroletype.read'))




result = await client.me.calendar.calendar_permissions.post(request_body = request_body)


```