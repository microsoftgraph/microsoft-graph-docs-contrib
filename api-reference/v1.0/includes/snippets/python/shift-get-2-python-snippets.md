---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.shift_preferences import ShiftPreferences
from msgraph.generated.models.shift_availability import ShiftAvailability
from msgraph.generated.models.patterned_recurrence import PatternedRecurrence
from msgraph.generated.models.recurrence_pattern import RecurrencePattern
from msgraph.generated.models.day_of_week import DayOfWeek
from msgraph.generated.models.recurrence_range import RecurrenceRange

graph_client = GraphServiceClient(credentials, scopes)

request_body = ShiftPreferences(
	id = "SHPR_eeab4fb1-20e5-48ca-ad9b-98119d94bee7",
	availability = [
		ShiftAvailability(
			recurrence = PatternedRecurrence(
				pattern = RecurrencePattern(
					type = RecurrencePatternType.Weekly,
					days_of_week = [
						DayOfWeek.Monday,
						DayOfWeek.Wednesday,
						DayOfWeek.Friday,
					],
					interval = 1,
				),
				range = RecurrenceRange(
					type = RecurrenceRangeType.NoEnd,
				),
			),
			time_zone = "Pacific Standard Time",
			time_slots = None,
		),
	],
	additional_data = {
			"@odata_etag" : "1a371e53-f0a6-4327-a1ee-e3c56e4b38aa",
	}
)

result = await graph_client.users.by_user_id('user-id').settings.shift_preferences.patch(request_body)


```