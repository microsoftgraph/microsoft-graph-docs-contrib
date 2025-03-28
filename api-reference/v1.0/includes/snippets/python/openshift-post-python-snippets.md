---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.teams.item.schedule.open_shifts.open_shifts_request_builder import OpenShiftsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph.generated.models.open_shift import OpenShift
from msgraph.generated.models.open_shift_item import OpenShiftItem
from msgraph.generated.models.schedule_entity_theme import ScheduleEntityTheme
from msgraph.generated.models.shift_activity import ShiftActivity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OpenShift(
	scheduling_group_id = "TAG_4ab7d329-1f7e-4eaf-ba93-63f1ff3f3c4a",
	shared_open_shift = OpenShiftItem(
		display_name = "Dayshift",
		start_date_time = "2024-11-04T20:00:00Z",
		end_date_time = "2024-11-04T21:00:00Z",
		theme = ScheduleEntityTheme.Blue,
		notes = "InventoryManagement",
		open_slot_count = 1,
		activities = [
		],
	),
	is_staged_for_deletion = False,
	additional_data = {
			"draft_time_off" : None,
	}
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("Authorization", "Bearer {token}")


result = await graph_client.teams.by_team_id('team-id').schedule.open_shifts.post(request_body, request_configuration = request_configuration)


```