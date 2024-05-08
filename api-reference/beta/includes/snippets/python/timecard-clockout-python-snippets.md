---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.teams.item.schedule.timecards.item.clock_out.clock_out_post_request_body import ClockOutPostRequestBody
from msgraph.generated.models.item_body import ItemBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = ClockOutPostRequestBody(
	notes = ItemBody(
		content_type = BodyType.Text,
		content = "clock out smaple notes",
	),
	additional_data = {
			"at_aproved_location" : True,
	}
)

result = await graph_client.teams.by_team_id('team-id').schedule.time_cards.by_time_card_id('timeCard-id').clock_out.post(request_body)


```