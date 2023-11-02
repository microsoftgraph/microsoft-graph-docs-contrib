---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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