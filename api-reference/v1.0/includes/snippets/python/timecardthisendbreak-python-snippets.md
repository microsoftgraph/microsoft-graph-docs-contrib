---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.teams.item.schedule.timecards.item.end_break.end_break_post_request_body import EndBreakPostRequestBody
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.body_type import BodyType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EndBreakPostRequestBody(
	is_at_approved_location = True,
	notes = ItemBody(
		content_type = BodyType.Text,
		content = "ending break",
	),
)

result = await graph_client.teams.by_team_id('team-id').schedule.time_cards.by_time_card_id('timeCard-id').end_break.post(request_body)


```