---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_review_schedule_definition import AccessReviewScheduleDefinition
from msgraph.generated.models.access_review_query_scope import AccessReviewQueryScope
from msgraph.generated.models.access_review_stage_settings import AccessReviewStageSettings
from msgraph.generated.models.access_review_reviewer_scope import AccessReviewReviewerScope
from msgraph.generated.models.access_review_schedule_settings import AccessReviewScheduleSettings
from msgraph.generated.models.patterned_recurrence import PatternedRecurrence
from msgraph.generated.models.recurrence_pattern import RecurrencePattern
from msgraph.generated.models.recurrence_range import RecurrenceRange

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessReviewScheduleDefinition(
	display_name = "Group Multi-stage Access Review",
	description_for_admins = "New scheduled access review",
	description_for_reviewers = "If you have any questions, contact jerry@contoso.com",
	scope = AccessReviewQueryScope(
		odata_type = "#microsoft.graph.accessReviewQueryScope",
		query = "/groups/02f3bafb-448c-487c-88c2-5fd65ce49a41/transitiveMembers",
		query_type = "MicrosoftGraph",
	),
	stage_settings = [
		AccessReviewStageSettings(
			stage_id = "1",
			duration_in_days = 2,
			recommendations_enabled = False,
			decisions_that_will_move_to_next_stage = [
				"NotReviewed",
				"Approve",
			],
			reviewers = [
				AccessReviewReviewerScope(
					query = "/users/398164b1-5196-49dd-ada2-364b49f99b27",
					query_type = "MicrosoftGraph",
				),
			],
		),
		AccessReviewStageSettings(
			stage_id = "2",
			depends_on = [
				"1",
			],
			duration_in_days = 2,
			recommendations_enabled = True,
			reviewers = [
				AccessReviewReviewerScope(
					query = "./manager",
					query_type = "MicrosoftGraph",
					query_root = "decisions",
				),
			],
			fallback_reviewers = [
				AccessReviewReviewerScope(
					query = "/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers",
					query_type = "MicrosoftGraph",
				),
			],
		),
	],
	settings = AccessReviewScheduleSettings(
		instance_duration_in_days = 4,
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
		decision_histories_for_reviewers_enabled = True,
	),
)

result = await graph_client.identity_governance.access_reviews.definitions.post(request_body)


```