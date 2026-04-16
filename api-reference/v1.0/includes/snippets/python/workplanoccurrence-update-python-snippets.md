---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.work_plan_occurrence import WorkPlanOccurrence
from msgraph.generated.models.date_time_time_zone import DateTimeTimeZone
from msgraph.generated.models.work_location_type import WorkLocationType
from msgraph.generated.models.time_off_details import TimeOffDetails
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = WorkPlanOccurrence(
	start = DateTimeTimeZone(
		date_time = "2025-12-15T08:00:00.0000000",
		time_zone = "Pacific Standard Time",
	),
	end = DateTimeTimeZone(
		date_time = "2025-12-15T12:00:00.0000000",
		time_zone = "Pacific Standard Time",
	),
	work_location_type = WorkLocationType.TimeOff,
	time_off_details = TimeOffDetails(
		subject = "Doctor Appointment",
		is_all_day = False,
	),
)

result = await graph_client.me.settings.work_hours_and_locations.occurrences.by_work_plan_occurrence_id('workPlanOccurrence-id').put(request_body)


```