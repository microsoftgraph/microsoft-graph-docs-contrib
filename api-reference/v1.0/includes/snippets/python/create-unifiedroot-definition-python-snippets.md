---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.access_review_schedule_definition import AccessReviewScheduleDefinition
from msgraph.generated.models.principal_resource_memberships_scope import PrincipalResourceMembershipsScope
from msgraph.generated.models.access_review_scope import AccessReviewScope
from msgraph.generated.models.access_review_principal_scope import AccessReviewPrincipalScope
from msgraph.generated.models.access_review_principal_scope_type import AccessReviewPrincipalScopeType
from msgraph.generated.models.access_review_resource_scope import AccessReviewResourceScope
from msgraph.generated.models.access_review_resource_scope_type import AccessReviewResourceScopeType
from msgraph.generated.models.access_review_reviewer_scope import AccessReviewReviewerScope
from msgraph.generated.models.access_review_reviewer_scope_type import AccessReviewReviewerScopeType
from msgraph.generated.models.access_review_schedule_settings import AccessReviewScheduleSettings
from msgraph.generated.models.patterned_recurrence import PatternedRecurrence
from msgraph.generated.models.recurrence_pattern import RecurrencePattern
from msgraph.generated.models.recurrence_pattern_type import RecurrencePatternType
from msgraph.generated.models.recurrence_range import RecurrenceRange
from msgraph.generated.models.recurrence_range_type import RecurrenceRangeType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessReviewScheduleDefinition(
	display_name = "Catalog access review",
	description_for_admins = "Quarterly user-centric review of catalog resources",
	scope = PrincipalResourceMembershipsScope(
		odata_type = "#microsoft.graph.principalResourceMembershipsScope",
		principal_scopes = [
			AccessReviewPrincipalScope(
				odata_type = "#microsoft.graph.accessReviewPrincipalScope",
				scope_type = AccessReviewPrincipalScopeType.AllUsers,
			),
		],
		resource_scopes = [
			AccessReviewResourceScope(
				odata_type = "#microsoft.graph.accessReviewResourceScope",
				resource_id = "c6010d0c-ff41-4929-9776-fa03a03dd5ac",
				scope_type = AccessReviewResourceScopeType.Catalog,
			),
		],
	),
	reviewers = [
		AccessReviewReviewerScope(
			odata_type = "#microsoft.graph.accessReviewReviewerScope",
			scope_type = AccessReviewReviewerScopeType.Manager,
		),
	],
	settings = AccessReviewScheduleSettings(
		mail_notifications_enabled = True,
		reminder_notifications_enabled = True,
		justification_required_on_approval = True,
		instance_duration_in_days = 6,
		recommendations_enabled = True,
		recurrence = PatternedRecurrence(
			pattern = RecurrencePattern(
				type = RecurrencePatternType.AbsoluteMonthly,
				interval = 1,
			),
			range = RecurrenceRange(
				type = RecurrenceRangeType.NoEnd,
				start_date = "2026-08-31",
			),
		),
	),
)

result = await graph_client.identity_governance.access_reviews.unified.definitions.post(request_body)


```