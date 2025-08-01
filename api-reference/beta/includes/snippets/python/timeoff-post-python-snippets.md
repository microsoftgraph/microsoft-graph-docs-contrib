---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.time_off import TimeOff
from msgraph_beta.generated.models.time_off_item import TimeOffItem
from msgraph_beta.generated.models.schedule_entity_theme import ScheduleEntityTheme
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TimeOff(
	user_id = "c5d0c76b-80c4-481c-be50-923cd8d680a1",
	shared_time_off = TimeOffItem(
		time_off_reason_id = "TOR_891045ca-b5d2-406b-aa06-a3c8921245d7",
		start_date_time = "2019-03-11T07:00:00Z",
		end_date_time = "2019-03-12T07:00:00Z",
		theme = ScheduleEntityTheme.White,
	),
	draft_time_off = TimeOffItem(
		time_off_reason_id = "TOR_891045ca-b5d2-406b-aa06-a3c8921245d7",
		start_date_time = "2019-03-11T07:00:00Z",
		end_date_time = "2019-03-12T07:00:00Z",
		theme = ScheduleEntityTheme.Pink,
	),
)

result = await graph_client.teams.by_team_id('team-id').schedule.times_off.post(request_body)


```