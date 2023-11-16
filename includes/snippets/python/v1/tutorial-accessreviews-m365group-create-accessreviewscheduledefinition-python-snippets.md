---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessReviewScheduleDefinition(
	display_name = "Group owners review guest across Microsoft 365 groups in the tenant (Quarterly)",
	description_for_admins = "",
	description_for_reviewers = "",
	scope = AccessReviewScope(
		additional_data = {
				"query" : "./members/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')",
				"query_type" : "MicrosoftGraph",
		}
	),
	instance_enumeration_scope = AccessReviewScope(
		additional_data = {
				"query" : "/groups?$filter=(groupTypes/any(c:c+eq+'Unified'))&$count=true",
				"query_type" : "MicrosoftGraph",
		}
	),
	reviewers = [
		AccessReviewReviewerScope(
			query = "./owners",
			query_type = "MicrosoftGraph",
			query_root = None,
		),
	],
	fallback_reviewers = [
		AccessReviewReviewerScope(
			query = "/users/c9a5aff7-9298-4d71-adab-0a222e0a05e4",
			query_type = "MicrosoftGraph",
			query_root = None,
		),
	],
	settings = AccessReviewScheduleSettings(
		mail_notifications_enabled = True,
		reminder_notifications_enabled = True,
		justification_required_on_approval = True,
		default_decision_enabled = True,
		default_decision = "Approve",
		instance_duration_in_days = 0,
		auto_apply_decisions_enabled = True,
		recommendations_enabled = True,
		recurrence = PatternedRecurrence(
			pattern = RecurrencePattern(
				type = RecurrencePatternType.AbsoluteMonthly,
				interval = 3,
				month = 0,
				day_of_month = 0,
				days_of_week = [
				],
				first_day_of_week = DayOfWeek.Sunday,
				index = WeekIndex.First,
			),
			range = RecurrenceRange(
				type = RecurrenceRangeType.Numbered,
				number_of_occurrences = 0,
				recurrence_time_zone = None,
				start_date = "2021-02-10",
				end_date = "2022-12-21",
			),
		),
		apply_actions = [
			RemoveAccessApplyAction(
				odata_type = "#microsoft.graph.removeAccessApplyAction",
			),
		],
	),
)

result = await graph_client.identity_governance.access_reviews.definitions.post(request_body)


```