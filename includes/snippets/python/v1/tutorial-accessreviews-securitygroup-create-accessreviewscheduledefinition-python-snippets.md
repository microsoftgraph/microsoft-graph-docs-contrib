---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_review_schedule_definition import AccessReviewScheduleDefinition
from msgraph.generated.models.access_review_scope import AccessReviewScope
from msgraph.generated.models.access_review_schedule_settings import AccessReviewScheduleSettings
from msgraph.generated.models.patterned_recurrence import PatternedRecurrence
from msgraph.generated.models.recurrence_range import RecurrenceRange

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessReviewScheduleDefinition(
	display_name = "One-time self-review for members of Building security",
	description_for_admins = "One-time self-review for members of Building security",
	description_for_reviewers = "One-time self-review for members of Building security",
	scope = AccessReviewScope(
		additional_data = {
				"query" : "/groups/eb75ccd2-59ef-48b7-8f76-cc3f33f899f4/transitiveMembers",
				"query_type" : "MicrosoftGraph",
		}
	),
	instance_enumeration_scope = AccessReviewScope(
		additional_data = {
				"query" : "/groups/eb75ccd2-59ef-48b7-8f76-cc3f33f899f4",
				"query_type" : "MicrosoftGraph",
		}
	),
	settings = AccessReviewScheduleSettings(
		mail_notifications_enabled = True,
		reminder_notifications_enabled = True,
		justification_required_on_approval = True,
		default_decision_enabled = True,
		default_decision = "Deny",
		instance_duration_in_days = 5,
		auto_apply_decisions_enabled = True,
		recommendations_enabled = True,
		recurrence = PatternedRecurrence(
			pattern = None,
			range = RecurrenceRange(
				type = RecurrenceRangeType.Numbered,
				number_of_occurrences = 0,
				recurrence_time_zone = None,
				start_date = "2024-03-21",
				end_date = "2024-03-30",
			),
		),
	),
)

result = await graph_client.identity_governance.access_reviews.definitions.post(request_body)


```