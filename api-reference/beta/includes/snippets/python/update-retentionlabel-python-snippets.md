---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.retention_label import RetentionLabel
from msgraph.generated.models.retention_duration import RetentionDuration

graph_client = GraphServiceClient(credentials, scopes)

request_body = RetentionLabel(
	odata_type = "#microsoft.graph.security.retentionLabel",
	retention_duration = RetentionDuration(
		odata_type = "microsoft.graph.security.retentionDuration",
	),
	description_for_admins = "String",
	description_for_users = "String",
	label_to_be_applied = "String",
	default_record_behavior = DefaultRecordBehavior.StartLocked,
)

result = await graph_client.security.labels.retention_labels.by_retention_label_id('retentionLabel-id').patch(request_body)


```