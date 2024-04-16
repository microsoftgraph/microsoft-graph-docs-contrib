---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_review_schedule_definition import AccessReviewScheduleDefinition
from msgraph.generated.models.principal_resource_memberships_scope import PrincipalResourceMembershipsScope
from msgraph.generated.models.access_review_scope import AccessReviewScope
from msgraph.generated.models.access_review_query_scope import AccessReviewQueryScope
from msgraph.generated.models.access_review_reviewer_scope import AccessReviewReviewerScope
from msgraph.generated.models.access_review_schedule_settings import AccessReviewScheduleSettings
from msgraph.generated.models.patterned_recurrence import PatternedRecurrence
from msgraph.generated.models.recurrence_pattern import RecurrencePattern
from msgraph.generated.models.recurrence_range import RecurrenceRange

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessReviewScheduleDefinition(
	display_name = "Review access of users and groups to privileged roles",
	description_for_admins = "Review access of users and groups to privileged roles",
	scope = PrincipalResourceMembershipsScope(
		odata_type = "#microsoft.graph.principalResourceMembershipsScope",
		principal_scopes = [
			AccessReviewQueryScope(
				odata_type = "#microsoft.graph.accessReviewQueryScope",
				query = "/users",
				query_type = "MicrosoftGraph",
			),
			AccessReviewQueryScope(
				odata_type = "#microsoft.graph.accessReviewQueryScope",
				query = "/groups",
				query_type = "MicrosoftGraph",
			),
		],
		resource_scopes = [
			AccessReviewQueryScope(
				odata_type = "#microsoft.graph.accessReviewQueryScope",
				query = "/roleManagement/directory/roleDefinitions/fe930be7-5e62-47db-91af-98c3a49a38b1",
				query_type = "MicrosoftGraph",
			),
		],
	),
	reviewers = [
		AccessReviewReviewerScope(
			query = "/users/2560f739-2e0e-4550-9fa0-1a1e67ae0ab8",
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
		recommendations_enabled = False,
		recurrence = PatternedRecurrence(
			pattern = RecurrencePattern(
				type = RecurrencePatternType.AbsoluteMonthly,
				interval = 3,
			),
			range = RecurrenceRange(
				type = RecurrenceRangeType.NoEnd,
				start_date = "2024-03-25",
			),
		),
	),
)

result = await graph_client.identity_governance.access_reviews.definitions.post(request_body)


```