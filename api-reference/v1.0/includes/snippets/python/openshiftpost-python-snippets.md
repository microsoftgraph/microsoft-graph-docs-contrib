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
from msgraph.generated.models.identity_set import IdentitySet
from msgraph.generated.models.identity import Identity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OpenShift(
	scheduling_group_id = "TAG_228940ed-ff84-4e25-b129-1b395cf78be0",
	shared_open_shift = OpenShiftItem(
		notes = "InventoryManagement",
		open_slot_count = 2,
		display_name = "Dayshift",
		start_date_time = "2018-10-04T00: 58: 45.340Z",
		end_date_time = "2018-10-04T09: 50: 45.332Z",
		theme = ScheduleEntityTheme.White,
		activities = [
			ShiftActivity(
				is_paid = True,
				start_date_time = "2018-10-04T00: 58: 45.340Z",
				end_date_time = "2018-10-04T01: 58: 45.340Z",
				code = "",
				display_name = "Lunch",
			),
		],
	),
	draft_open_shift = None,
	isStagedForDeletion = false,
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("Authorization", "Bearer {token}")


result = await graph_client.teams.by_team_id('team-id').schedule.open_shifts.post(request_body, request_configuration = request_configuration)


```