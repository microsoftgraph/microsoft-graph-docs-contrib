---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = CalendarGroup(
	name = "Personal events",
)

result = await graph_client.me.calendar_groups.post(body = request_body)


```