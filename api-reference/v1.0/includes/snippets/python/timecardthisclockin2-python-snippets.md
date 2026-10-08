---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.teams.item.schedule.timecards.clock_in.clock_in_post_request_body import ClockInPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ClockInPostRequestBody(
	is_at_approved_location = True,
	on_behalf_of_user_id = "3f29c8e7-7a41-4d8e-99d6-2b1f76c9421e",
)

result = await graph_client.teams.by_team_id('team-id').schedule.time_cards.clock_in.post(request_body)


```