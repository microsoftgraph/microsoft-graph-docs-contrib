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
from msgraph.generated.models.recurrence_range import RecurrenceRange

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessReviewScheduleDefinition(
	display_name = "Test create",
	description_for_admins = "New scheduled access review",
	description_for_reviewers = "If you have any questions, contact jerry@contoso.com",
	scope = AccessReviewQueryScope(
		odata_type = "#microsoft.graph.accessReviewQueryScope",
		query = "/groups/02f3bafb-448c-487c-88c2-5fd65ce49a41/transitiveMembers",
		query_type = "MicrosoftGraph",
	),
	reviewers = [
		AccessReviewReviewerScope(
			query = "/users/398164b1-5196-49dd-ada2-364b49f99b27",
			query_type = "MicrosoftGraph",
		),
	],
	settings = AccessReviewScheduleSettings(
		mail_notifications_enabled = True,
		reminder_notifications_enabled = True,
		justification_required_on_approval = True,
		default_decision_enabled = False,
		default_decision = "None",
		instance_duration_in_days = 1,
		recommendations_enabled = True,
		recurrence = PatternedRecurrence(
			pattern = RecurrencePattern(
				type = RecurrencePatternType.Weekly,
				interval = 1,
			),
			range = RecurrenceRange(
				type = RecurrenceRangeType.NoEnd,
				start_date = "2020-09-08T12:02:30.667Z",
			),
		),
	),
)

result = await graph_client.identity_governance.access_reviews.definitions.post(request_body)


```