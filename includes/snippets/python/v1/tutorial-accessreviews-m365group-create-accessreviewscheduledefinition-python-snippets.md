---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_review_schedule_definition import AccessReviewScheduleDefinition
from msgraph.generated.models.access_review_query_scope import AccessReviewQueryScope
from msgraph.generated.models.access_review_reviewer_scope import AccessReviewReviewerScope
from msgraph.generated.models.access_review_schedule_settings import AccessReviewScheduleSettings
from msgraph.generated.models.patterned_recurrence import PatternedRecurrence
from msgraph.generated.models.recurrence_pattern import RecurrencePattern
from msgraph.generated.models.day_of_week import DayOfWeek
from msgraph.generated.models.recurrence_range import RecurrenceRange
from msgraph.generated.models.access_review_apply_action import AccessReviewApplyAction
from msgraph.generated.models.remove_access_apply_action import RemoveAccessApplyAction

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessReviewScheduleDefinition(
	display_name = "Guest access to marketing group",
	scope = AccessReviewQueryScope(
		odata_type = "#microsoft.graph.accessReviewQueryScope",
		query = "./members/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')",
		query_type = "MicrosoftGraph",
	),
	instance_enumeration_scope = AccessReviewQueryScope(
		odata_type = "#microsoft.graph.accessReviewQueryScope",
		query = "/v1.0/groups?$filter=(groupTypes/any(c:c+eq+'Unified'))&$count=true",
		query_type = "MicrosoftGraph",
		query_root = None,
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
		),
	],
	settings = AccessReviewScheduleSettings(
		mail_notifications_enabled = True,
		reminder_notifications_enabled = True,
		justification_required_on_approval = True,
		default_decision_enabled = True,
		default_decision = "Deny",
		instance_duration_in_days = 3,
		auto_apply_decisions_enabled = True,
		recommendations_enabled = True,
		recommendation_look_back_duration = "P30D",
		decision_histories_for_reviewers_enabled = False,
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
				type = RecurrenceRangeType.EndDate,
				number_of_occurrences = 0,
				recurrence_time_zone = None,
				start_date = "2024-03-21",
				end_date = "2025-03-21",
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