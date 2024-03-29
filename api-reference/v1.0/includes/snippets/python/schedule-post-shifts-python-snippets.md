---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.shift import Shift
from msgraph.generated.models.shift_item import ShiftItem
from msgraph.generated.models.shift_activity import ShiftActivity

graph_client = GraphServiceClient(credentials, scopes)

request_body = Shift(
	id = "SHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8",
	user_id = "c5d0c76b-80c4-481c-be50-923cd8d680a1",
	scheduling_group_id = "TAG_228940ed-ff84-4e25-b129-1b395cf78be0",
	shared_shift = ShiftItem(
		display_name = "Day shift",
		notes = "Please do inventory as part of your shift.",
		start_date_time = "2019-03-11T15:00:00Z",
		end_date_time = "2019-03-12T00:00:00Z",
		theme = ScheduleEntityTheme.Blue,
		activities = [
			ShiftActivity(
				is_paid = True,
				start_date_time = "2019-03-11T15:00:00Z",
				end_date_time = "2019-03-11T15:15:00Z",
				code = "",
				display_name = "Lunch",
			),
		],
	),
	draft_shift = ShiftItem(
		display_name = "Day shift",
		notes = "Please do inventory as part of your shift.",
		start_date_time = "2019-03-11T15:00:00Z",
		end_date_time = "2019-03-12T00:00:00Z",
		theme = ScheduleEntityTheme.Blue,
		activities = [
			ShiftActivity(
				is_paid = True,
				start_date_time = "2019-03-11T15:00:00Z",
				end_date_time = "2019-03-11T15:30:00Z",
				code = "",
				display_name = "Lunch",
			),
		],
	),
)

result = await graph_client.teams.by_team_id('team-id').schedule.shifts.post(request_body)


```