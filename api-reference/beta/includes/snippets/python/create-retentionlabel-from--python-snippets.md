---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.retention_label import RetentionLabel
from msgraph.generated.models.retention_duration import RetentionDuration
from msgraph.generated.models.identity_set import IdentitySet
from msgraph.generated.models.file_plan_descriptor import FilePlanDescriptor

graph_client = GraphServiceClient(credentials, scopes)

request_body = RetentionLabel(
	odata_type = "#microsoft.graph.security.retentionLabel",
	display_name = "String",
	behavior_during_retention_period = BehaviorDuringRetentionPeriod.DoNotRetain,
	action_after_retention_period = ActionAfterRetentionPeriod.None,
	retention_trigger = RetentionTrigger.DateLabeled,
	retention_duration = RetentionDuration(
		odata_type = "microsoft.graph.security.retentionDuration",
	),
	is_in_use = Boolean,
	description_for_admins = "String",
	description_for_users = "String",
	created_by = IdentitySet(
		odata_type = "microsoft.graph.identitySet",
	),
	label_to_be_applied = "String",
	default_record_behavior = DefaultRecordBehavior.StartLocked,
	descriptors = FilePlanDescriptor(
		additional_data = {
				"authority_template@odata_bind" : "https://graph.microsoft.com/beta/security/labels/authorities('fie3f4fc-b966-4c40-94de-fb8a383658e4')",
				"category_template@odata_bind" : "https://graph.microsoft.com/beta/security/labels/categories('0bjk8-b966-4c40-94de-fb8a383658e4')",
				"citation_template@odata_bind" : "https://graph.microsoft.com/beta/security/labels/citations('0e23f4fc-b966-4c40-94de-fb8a383658e4')",
				"department_template@odata_bind" : "https://graph.microsoft.com/beta/security/labels/departments('p99ef4fc-b966-4c40-94de-fb8a383658e4')",
				"file_plan_reference_template@odata_bind" : "https://graph.microsoft.com/beta/security/labels/filePlanReferences('e095f4fc-b966-4c40-94de-fb8a383658e4')",
		}
	),
)

result = await graph_client.security.labels.retention_labels.post(request_body)


```