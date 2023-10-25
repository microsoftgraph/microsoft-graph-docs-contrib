---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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