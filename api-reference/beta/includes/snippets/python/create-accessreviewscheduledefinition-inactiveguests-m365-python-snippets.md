---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_review_schedule_definition import AccessReviewScheduleDefinition
from msgraph.generated.models.access_review_query_scope import AccessReviewQueryScope
from msgraph.generated.models.access_review_inactive_users_query_scope import AccessReviewInactiveUsersQueryScope
from msgraph.generated.models.access_review_reviewer_scope import AccessReviewReviewerScope
from msgraph.generated.models.access_review_schedule_settings import AccessReviewScheduleSettings
from msgraph.generated.models.patterned_recurrence import PatternedRecurrence
from msgraph.generated.models.recurrence_pattern import RecurrencePattern
from msgraph.generated.models.recurrence_range import RecurrenceRange

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessReviewScheduleDefinition(
	display_name = "Review inactive guests on teams",
	description_for_admins = "Control guest user access to our teams.",
	description_for_reviewers = "Information security is everyone's responsibility. Review our access policy for more.",
	instance_enumeration_scope = AccessReviewQueryScope(
		odata_type = "#microsoft.graph.accessReviewQueryScope",
		query = "/groups?$filter=(groupTypes/any(c:c+eq+'Unified') and resourceProvisioningOptions/Any(x:x eq 'Team')')",
		query_type = "MicrosoftGraph",
	),
	scope = AccessReviewInactiveUsersQueryScope(
		odata_type = "#microsoft.graph.accessReviewInactiveUsersQueryScope",
		query = "./members/microsoft.graph.user/?$filter=(userType eq 'Guest')",
		query_type = "MicrosoftGraph",
		inactive_duration = "P30D",
	),
	reviewers = [
		AccessReviewReviewerScope(
			query = "./owners",
			query_type = "MicrosoftGraph",
		),
	],
	fallback_reviewers = [
		AccessReviewReviewerScope(
			query = "/users/fc9a2c2b-1ddc-486d-a211-5fe8ca77fa1f",
			query_type = "MicrosoftGraph",
		),
	],
	settings = AccessReviewScheduleSettings(
		mail_notifications_enabled = True,
		reminder_notifications_enabled = True,
		justification_required_on_approval = True,
		recommendations_enabled = True,
		instance_duration_in_days = 3,
		recurrence = PatternedRecurrence(
			pattern = RecurrencePattern(
				type = RecurrencePatternType.AbsoluteMonthly,
				day_of_month = 5,
				interval = 3,
			),
			range = RecurrenceRange(
				type = RecurrenceRangeType.NoEnd,
				start_date = "2020-05-04T00:00:00.000Z",
			),
		),
		default_decision_enabled = True,
		default_decision = "Deny",
		auto_apply_decisions_enabled = True,
	),
)

result = await graph_client.identity_governance.access_reviews.definitions.post(request_body)


```