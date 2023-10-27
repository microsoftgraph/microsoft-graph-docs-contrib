---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Calendar(
	name = "Marketing calendar",
)

result = await graph_client.me.calendar_groups.by_calendar_group_id('calendarGroup-id').calendars.post(request_body)


```