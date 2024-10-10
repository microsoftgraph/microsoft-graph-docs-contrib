---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.schedule import Schedule
from msgraph_beta.generated.models.operation_status import OperationStatus
from msgraph_beta.generated.models.day_of_week import DayOfWeek
from msgraph_beta.generated.models.time_clock_settings import TimeClockSettings
from msgraph_beta.generated.models.geo_coordinates import GeoCoordinates
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Schedule(
	enabled = True,
	time_zone = "America/Chicago",
	provision_status = OperationStatus.Completed,
	provision_status_code = None,
	open_shifts_enabled = True,
	swap_shifts_requests_enabled = True,
	offer_shift_requests_enabled = True,
	time_off_requests_enabled = True,
	start_day_of_week = DayOfWeek.Tuesday,
	activities_included_when_copying_shifts_enabled = True,
	is_cross_location_shifts_enabled = True,
	is_cross_location_shift_request_approval_required = True,
	time_clock_enabled = True,
	time_clock_settings = TimeClockSettings(
		approved_location = GeoCoordinates(
			altitude = 1024.13,
			latitude = 26.13246,
			longitude = 24.34616,
		),
	),
)

result = await graph_client.teams.by_team_id('team-id').schedule.put(request_body)


```