---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.shift import Shift
from msgraph.generated.models.shift_item import ShiftItem
from msgraph.generated.models.schedule_entity_theme import ScheduleEntityTheme
from msgraph.generated.models.shift_activity import ShiftActivity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Shift(
	user_id = "5ca83ce7-291d-43b7-bf53-af79eef4bc1d",
	draft_shift = ShiftItem(
		display_name = None,
		start_date_time = "2024-10-08T15:00:00Z",
		end_date_time = "2024-10-09T00:00:00Z",
		theme = ScheduleEntityTheme.Blue,
		notes = None,
		activities = [
		],
	),
	shared_shift = None,
	additional_data = {
			"is_staged_for_deletion" : False,
	}
)

result = await graph_client.teams.by_team_id('team-id').schedule.shifts.post(request_body)


```