---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.work_plan_recurrence import WorkPlanRecurrence
from msgraph.generated.models.date_time_time_zone import DateTimeTimeZone
from msgraph.generated.models.work_location_type import WorkLocationType
from msgraph.generated.models.patterned_recurrence import PatternedRecurrence
from msgraph.generated.models.recurrence_pattern import RecurrencePattern
from msgraph.generated.models.recurrence_pattern_type import RecurrencePatternType
from msgraph.generated.models.day_of_week import DayOfWeek
from msgraph.generated.models.recurrence_range import RecurrenceRange
from msgraph.generated.models.recurrence_range_type import RecurrenceRangeType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = WorkPlanRecurrence(
	start = DateTimeTimeZone(
		date_time = "2025-12-11T09:00:00.0000000",
		time_zone = "Pacific Standard Time",
	),
	end = DateTimeTimeZone(
		date_time = "2025-12-11T18:00:00.0000000",
		time_zone = "Pacific Standard Time",
	),
	work_location_type = WorkLocationType.Office,
	recurrence = PatternedRecurrence(
		pattern = RecurrencePattern(
			type = RecurrencePatternType.Weekly,
			interval = 1,
			first_day_of_week = DayOfWeek.Sunday,
			days_of_week = [
				DayOfWeek.Thursday,
			],
		),
		range = RecurrenceRange(
			type = RecurrenceRangeType.NoEnd,
			start_date = "2025-12-11",
			recurrence_time_zone = "Pacific Standard Time",
		),
	),
)

result = await graph_client.me.settings.work_hours_and_locations.recurrences.post(request_body)


```