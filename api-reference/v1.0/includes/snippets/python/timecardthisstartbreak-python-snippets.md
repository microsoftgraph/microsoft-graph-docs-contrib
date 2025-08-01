---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.teams.item.schedule.timecards.item.start_break.start_break_post_request_body import StartBreakPostRequestBody
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.body_type import BodyType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = StartBreakPostRequestBody(
	is_at_approved_location = True,
	notes = ItemBody(
		content = "Starting break late to make up for late clockin",
		content_type = BodyType.Text,
	),
)

result = await graph_client.teams.by_team_id('team-id').schedule.time_cards.by_time_card_id('timeCard-id').start_break.post(request_body)


```