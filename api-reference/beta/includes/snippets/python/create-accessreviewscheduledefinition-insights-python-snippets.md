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
from msgraph_beta.generated.models.access_review_recommendation_insight_setting import AccessReviewRecommendationInsightSetting
from msgraph_beta.generated.models.user_last_sign_in_recommendation_insight_setting import UserLastSignInRecommendationInsightSetting
from msgraph_beta.generated.models.user_sign_in_recommendation_scope import UserSignInRecommendationScope
from msgraph_beta.generated.models.group_peer_outlier_recommendation_insight_settings import GroupPeerOutlierRecommendationInsightSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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
		instance_duration_in_days = 1,
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
		recommendation_insight_settings = [
			UserLastSignInRecommendationInsightSetting(
				odata_type = "#microsoft.graph.userLastSignInRecommendationInsightSetting",
				recommendation_look_back_duration = "P30D",
				sign_in_scope = UserSignInRecommendationScope.Tenant,
			),
			GroupPeerOutlierRecommendationInsightSettings(
				odata_type = "#microsoft.graph.groupPeerOutlierRecommendationInsightSettings",
			),
		],
	),
)

result = await graph_client.identity_governance.access_reviews.definitions.post(request_body)


```