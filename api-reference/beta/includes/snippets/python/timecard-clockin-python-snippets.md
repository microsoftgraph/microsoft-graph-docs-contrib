---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.teams.item.schedule.timecards.clock_in.clock_in_post_request_body import ClockInPostRequestBody
from msgraph_beta.generated.models.item_body import ItemBody
from msgraph_beta.generated.models.body_type import BodyType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ClockInPostRequestBody(
	is_at_approved_location = True,
	notes = ItemBody(
		content_type = BodyType.Text,
		content = "clocking in",
	),
)

result = await graph_client.teams.by_team_id('team-id').schedule.time_cards.clock_in.post(request_body)


```