---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Calendar()
request_body.name = 'Marketing calendar'




result = await client.me.calendar_groups.by_calendar_group_id('calendarGroup-id').calendars.post(request_body = request_body)


```