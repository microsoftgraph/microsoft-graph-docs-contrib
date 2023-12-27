---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessReviewScheduleDefinition(
	display_name = "Review employee access to LinkedIn",
	description_for_admins = "Review employee access to LinkedIn",
	scope = PrincipalResourceMembershipsScope(
		odata_type = "#microsoft.graph.principalResourceMembershipsScope",
		principal_scopes = [
			AccessReviewQueryScope(
				odata_type = "#microsoft.graph.accessReviewQueryScope",
				query = "/users",
				query_type = "MicrosoftGraph",
			),
		],
		resource_scopes = [
			AccessReviewQueryScope(
				odata_type = "#microsoft.graph.accessReviewQueryScope",
				query = "/servicePrincipals/bae11f90-7d5d-46ba-9f55-8112b59d92ae",
				query_type = "MicrosoftGraph",
			),
		],
	),
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
	settings = AccessReviewScheduleSettings(
		mail_notifications_enabled = True,
		reminder_notifications_enabled = True,
		justification_required_on_approval = True,
		default_decision_enabled = True,
		default_decision = "Recommendation",
		instance_duration_in_days = 180,
		auto_apply_decisions_enabled = True,
		recommendations_enabled = True,
		recurrence = PatternedRecurrence(
			pattern = RecurrencePattern(
				type = RecurrencePatternType.AbsoluteMonthly,
				interval = 6,
				day_of_month = 0,
			),
			range = RecurrenceRange(
				type = RecurrenceRangeType.Numbered,
				start_date = "2021-05-05",
				end_date = "2022-05-05",
			),
		),
	),
	additional_data = {
			"backup_reviewers" : [
				{
						"query" : "/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers",
						"query_type" : "MicrosoftGraph",
				},
			],
	}
)

result = await graph_client.identity_governance.access_reviews.definitions.post(request_body)


```