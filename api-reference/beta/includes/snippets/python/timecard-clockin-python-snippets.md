---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.clock_in_post_request_body import ClockInPostRequestBody
from msgraph.generated.models.item_body import ItemBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = ClockInPostRequestBody(
	notes = ItemBody(
		content_type = BodyType.Text,
		content = "clock in notes",
	),
	additional_data = {
			"at_aproved_location" : True,
	}
)

result = await graph_client.teams.by_team_id('team-id').schedule.time_cards.clock_in.post(request_body)


```