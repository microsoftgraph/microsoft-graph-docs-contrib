---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.time_off import TimeOff
from msgraph.generated.models.time_off_item import TimeOffItem
from msgraph.generated.models.schedule_entity_theme import ScheduleEntityTheme
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TimeOff(
	user_id = "aa162a04-bec6-4b81-ba99-96caa7b2b24d",
	shared_time_off = TimeOffItem(
		time_off_reason_id = "TOR_29a5ba96-c7ef-4e76-bec6-055323746314",
		start_date_time = "2024-10-10T19:00:00Z",
		end_date_time = "2024-10-10T20:00:00Z",
		theme = ScheduleEntityTheme.Blue,
	),
	draft_time_off = None,
	additional_data = {
			"is_staged_for_deletion" : False,
	}
)

result = await graph_client.teams.by_team_id('team-id').schedule.times_off.post(request_body)


```