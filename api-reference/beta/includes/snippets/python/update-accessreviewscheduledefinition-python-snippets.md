---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.access_review_schedule_definition import AccessReviewScheduleDefinition
from msgraph_beta.generated.models.access_review_query_scope import AccessReviewQueryScope
from msgraph_beta.generated.models.access_review_reviewer_scope import AccessReviewReviewerScope
from msgraph_beta.generated.models.access_review_schedule_settings import AccessReviewScheduleSettings
from msgraph_beta.generated.models.patterned_recurrence import PatternedRecurrence
from msgraph_beta.generated.models.recurrence_pattern import RecurrencePattern
from msgraph_beta.generated.models.recurrence_pattern_type import RecurrencePatternType
from msgraph_beta.generated.models.recurrence_range import RecurrenceRange
from msgraph_beta.generated.models.recurrence_range_type import RecurrenceRangeType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessReviewScheduleDefinition(
	id = "60860cdd-fb4d-4054-91ba-f75e04444aa6",
	display_name = "Test world UPDATED NAME!",
	description_for_admins = "Test world",
	description_for_reviewers = "Test world",
	scope = AccessReviewQueryScope(
		odata_type = "#microsoft.graph.accessReviewQueryScope",
		query = "/groups/b7a059cb-038a-4802-8fc9-b9d1ed0cf11f/transitiveMembers",
		query_type = "MicrosoftGraph",
	),
	instance_enumeration_scope = AccessReviewQueryScope(
		odata_type = "#microsoft.graph.accessReviewQueryScope",
		query = "/groups/b7a059cb-038a-4802-8fc9-b9d1ed0cf11f",
		query_type = "MicrosoftGraph",
	),
	reviewers = [
	],
	settings = AccessReviewScheduleSettings(
		mail_notifications_enabled = True,
		reminder_notifications_enabled = True,
		justification_required_on_approval = True,
		default_decision_enabled = False,
		default_decision = "None",
		instance_duration_in_days = 3,
		auto_apply_decisions_enabled = False,
		recommendations_enabled = True,
		recurrence = PatternedRecurrence(
			pattern = RecurrencePattern(
				type = RecurrencePatternType.Weekly,
				interval = 1,
			),
			range = RecurrenceRange(
				type = RecurrenceRangeType.NoEnd,
				start_date = "2020-09-15",
			),
		),
	),
)

result = await graph_client.identity_governance.access_reviews.definitions.by_access_review_schedule_definition_id('accessReviewScheduleDefinition-id').put(request_body)


```