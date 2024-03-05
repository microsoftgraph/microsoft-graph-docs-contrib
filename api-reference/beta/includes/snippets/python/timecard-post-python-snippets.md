---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.time_card import TimeCard
from msgraph.generated.models.time_card_event import TimeCardEvent
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.time_card_break import TimeCardBreak

graph_client = GraphServiceClient(credentials, scopes)

request_body = TimeCard(
	clock_in_event = TimeCardEvent(
		date_time = "2019-03-18T00:00:00.000Z",
		at_approved_location = True,
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
				at_approved_location = True,
				notes = ItemBody(
					content = "Reduced break to make up for lost time",
					content_type = BodyType.Text,
				),
			),
		),
	],
	additional_data = {
			"on_behalf_of_user_id" : "a3601044-a1b5-438e-b742-f78d01d68a67",
	}
)

result = await graph_client.teams.by_team_id('team-id').schedule.time_cards.post(request_body)


```