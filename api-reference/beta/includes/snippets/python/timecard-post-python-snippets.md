---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.time_card import TimeCard
from msgraph_beta.generated.models.time_card_event import TimeCardEvent
from msgraph_beta.generated.models.item_body import ItemBody
from msgraph_beta.generated.models.body_type import BodyType
from msgraph_beta.generated.models.time_card_break import TimeCardBreak
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TimeCard(
	user_id = "a3601044-a1b5-438e-b742-f78d01d68a67",
	clock_in_event = TimeCardEvent(
		date_time = "2019-03-18T00:00:00.000Z",
		is_at_approved_location = True,
		notes = ItemBody(
			content = "Started late due to traffic in CA 237",
			content_type = BodyType.Text,
		),
	),
	notes = ItemBody(
		content = "8 To 5 Inventory management",
		content_type = BodyType.Text,
	),
	breaks = [
		TimeCardBreak(
			break_id = "string",
			notes = ItemBody(
				content = "Lunch break",
				content_type = BodyType.Text,
			),
			start = TimeCardEvent(
				date_time = "2019-03-18T02:00:00.000Z",
				is_at_approved_location = True,
				notes = ItemBody(
					content = "Reduced break to make up for lost time",
					content_type = BodyType.Text,
				),
			),
		),
	],
)

result = await graph_client.teams.by_team_id('team-id').schedule.time_cards.post(request_body)


```