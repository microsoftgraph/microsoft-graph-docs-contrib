---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.security.retention_label import RetentionLabel
from msgraph.generated.models.behavior_during_retention_period import BehaviorDuringRetentionPeriod
from msgraph.generated.models.action_after_retention_period import ActionAfterRetentionPeriod
from msgraph.generated.models.retention_trigger import RetentionTrigger
from msgraph.generated.models.security.retention_duration_in_days import RetentionDurationInDays
from msgraph.generated.models.security.disposition_review_stage import DispositionReviewStage
from msgraph.generated.models.security.file_plan_descriptor import FilePlanDescriptor
from msgraph.generated.models.default_record_behavior import DefaultRecordBehavior
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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
				"authority_template@odata_bind" : "https://graph.microsoft.com/v1.0/security/labels/authorities('fie3f4fc-b966-4c40-94de-fb8a383658e4')",
				"category_template@odata_bind" : "https://graph.microsoft.com/v1.0/security/labels/categories('0bjk8-b966-4c40-94de-fb8a383658e4')",
				"citation_template@odata_bind" : "https://graph.microsoft.com/v1.0/security/labels/citations('0e23f4fc-b966-4c40-94de-fb8a383658e4')",
				"department_template@odata_bind" : "https://graph.microsoft.com/v1.0/security/labels/departments('p99ef4fc-b966-4c40-94de-fb8a383658e4')",
				"file_plan_reference_template@odata_bind" : "https://graph.microsoft.com/v1.0/security/labels/filePlanReferences('e095f4fc-b966-4c40-94de-fb8a383658e4')",
		}
	),
	default_record_behavior = DefaultRecordBehavior.StartLocked,
	additional_data = {
			"retention_event_type@odata_bind" : "https://graph.microsoft.com/v1.0/security/triggerTypes/retentionEventTypes('e095f4fc-b966-4c40-94de-fb8a383658e4')",
	}
)

result = await graph_client.security.labels.retention_labels.post(request_body)


```