---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.retention_label import RetentionLabel
from msgraph.generated.models.retention_duration_in_days import RetentionDurationInDays
from msgraph.generated.models.disposition_review_stage import DispositionReviewStage
from msgraph.generated.models.file_plan_descriptor import FilePlanDescriptor

graph_client = GraphServiceClient(credentials, scopes)

request_body = RetentionLabel(
	odata_type = "#microsoft.graph.security.retentionLabel",
	display_name = "Retention Schedule 10005",
	behavior_during_retention_period = BehaviorDuringRetentionPeriod.Retain,
	action_after_retention_period = ActionAfterRetentionPeriod.StartDispositionReview,
	retention_trigger = RetentionTrigger.DateOfEvent,
	retention_duration = RetentionDurationInDays(
		odata_type = "microsoft.graph.security.retentionDurationInDays",
		days = 2555,
	),
	disposition_review_stages = [
		DispositionReviewStage(
			stage_number = 1,
			name = "Stage1",
			additional_data = {
					"reviewers_email_addresses " : [
						"Admin@contoso.onmicrosoft.com",
					],
			}
		),
	],
	description_for_admins = "retain for 7 years",
	description_for_users = "retain for 7 years",
	descriptors = FilePlanDescriptor(
		additional_data = {
				"authority_template@odata_bind" : "https://graph.microsoft.com/beta/security/labels/authorities('fie3f4fc-b966-4c40-94de-fb8a383658e4')",
				"category_template@odata_bind" : "https://graph.microsoft.com/beta/security/labels/categories('0bjk8-b966-4c40-94de-fb8a383658e4')",
				"citation_template@odata_bind" : "https://graph.microsoft.com/beta/security/labels/citations('0e23f4fc-b966-4c40-94de-fb8a383658e4')",
				"department_template@odata_bind" : "https://graph.microsoft.com/beta/security/labels/departments('p99ef4fc-b966-4c40-94de-fb8a383658e4')",
				"file_plan_reference_template@odata_bind" : "https://graph.microsoft.com/beta/security/labels/filePlanReferences('e095f4fc-b966-4c40-94de-fb8a383658e4')",
		}
	),
	default_record_behavior = DefaultRecordBehavior.StartLocked,
	additional_data = {
			"retention_event_type@odata_bind" : "https://graph.microsoft.com/beta/security/triggerTypes/retentionEventTypes('e095f4fc-b966-4c40-94de-fb8a383658e4')",
	}
)

result = await graph_client.security.labels.retention_labels.post(request_body)


```