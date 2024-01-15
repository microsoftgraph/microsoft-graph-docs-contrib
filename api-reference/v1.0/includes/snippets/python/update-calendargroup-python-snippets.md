---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = CalendarGroup(
	name = "name-value",
)

result = await graph_client.me.calendar_groups.by_calendar_group_id('calendarGroup-id').patch(request_body)


```