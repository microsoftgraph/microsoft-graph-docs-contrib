---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.calendar_group import CalendarGroup
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CalendarGroup(
	name = "name-value",
)

result = await graph_client.me.calendar_groups.by_calendar_group_id('calendarGroup-id').patch(request_body)


```