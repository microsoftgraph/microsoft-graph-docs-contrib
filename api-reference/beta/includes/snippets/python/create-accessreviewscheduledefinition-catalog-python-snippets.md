---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.access_review_schedule_definition import AccessReviewScheduleDefinition
from msgraph_beta.generated.models.access_review_scope import AccessReviewScope
from msgraph_beta.generated.models.access_review_reviewer_scope import AccessReviewReviewerScope
from msgraph_beta.generated.models.access_review_schedule_settings import AccessReviewScheduleSettings
from msgraph_beta.generated.models.patterned_recurrence import PatternedRecurrence
from msgraph_beta.generated.models.recurrence_pattern import RecurrencePattern
from msgraph_beta.generated.models.recurrence_pattern_type import RecurrencePatternType
from msgraph_beta.generated.models.recurrence_range import RecurrenceRange
from msgraph_beta.generated.models.recurrence_range_type import RecurrenceRangeType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessReviewScheduleDefinition(
	display_name = "Review of catalog",
	description_for_admins = "Review of all resources in a catalog",
	description_for_reviewers = "If you have any questions, contact jerry@contoso.com",
	scope = AccessReviewScope(
		odata_type = "#microsoft.graph.accessReviewResourceScope",
		additional_data = {
				"resource_scopes" : [
					{
							"resource_id" : "a45681aa-35f2-47c6-958b-741d6b09a033",
							"display_name" : "My Catalog",
							"scope_type" : "catalog",
					},
				],
				"principal_scopes" : [
					{
							"@odata_type" : "#microsoft.graph.accessReviewPrincipalScope",
							"scope_type" : "allUsers",
					},
				],
		}
	),
	reviewers = [
		AccessReviewReviewerScope(
			odata_type = "#microsoft.graph.accessReviewReviewerScope",
			additional_data = {
					"scope_type" : "resourceOwner",
			}
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