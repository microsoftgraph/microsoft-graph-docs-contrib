---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.schedule import Schedule
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Schedule(
	enabled = True,
	time_zone = "America/Chicago",
)

result = await graph_client.teams.by_team_id('team-id').schedule.put(request_body)


```