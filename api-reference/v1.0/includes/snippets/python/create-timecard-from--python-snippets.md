---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.time_card import TimeCard
from msgraph.generated.models.time_card_event import TimeCardEvent
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.body_type import BodyType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TimeCard(
	clock_in_event = TimeCardEvent(
		date_time = "2025-01-07T21:00:00.000Z",
		is_at_approved_location = True,
		notes = ItemBody(
			content = "Started late due to traffic in CA 237",
			content_type = BodyType.Text,
		),
	),
	clock_out_event = TimeCardEvent(
		date_time = "2025-01-07T21:30:00.000Z",
		is_at_approved_location = True,
	),
)

result = await graph_client.teams.by_team_id('team-id').schedule.time_cards.post(request_body)


```