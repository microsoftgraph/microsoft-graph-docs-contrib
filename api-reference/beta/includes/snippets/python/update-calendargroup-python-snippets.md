---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.calendar_group import CalendarGroup

graph_client = GraphServiceClient(credentials, scopes)

request_body = CalendarGroup(
	name = "name-value",
)

result = await graph_client.me.calendar_groups.by_calendar_group_id('calendarGroup-id').patch(request_body)


```