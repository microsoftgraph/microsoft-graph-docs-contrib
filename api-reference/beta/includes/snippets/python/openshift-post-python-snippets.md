---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.teams.item.schedule.openShifts.open_shifts_request_builder import OpenShiftsRequestBuilder
from msgraph.generated.models.open_shift import OpenShift
from msgraph.generated.models.open_shift_item import OpenShiftItem
from msgraph.generated.models.shift_activity import ShiftActivity
from msgraph.generated.models.identity_set import IdentitySet
from msgraph.generated.models.identity import Identity

graph_client = GraphServiceClient(credentials, scopes)

request_body = OpenShift(
	id = "OPNSHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8",
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
	created_date_time = "2019-03-14T04: 32: 51.451Z",
	last_modified_date_time = "2019-03-14T05: 32: 51.451Z",
	last_modified_by = IdentitySet(
		application = None,
		device = None,
		user = Identity(
			id = "366c0b19-49b1-41b5-a03f-9f3887bd0ed8",
			display_name = "JohnDoe",
		),
		additional_data = {
				"conversation" : None,
		}
	),
)

request_configuration = OpenShiftsRequestBuilder.OpenShiftsRequestBuilderPostRequestConfiguration()
request_configuration.headers.add("Authorization", "Bearer {token}")


result = await graph_client.teams.by_team_id('team-id').schedule.open_shifts.post(request_body, request_configuration = request_configuration)


```