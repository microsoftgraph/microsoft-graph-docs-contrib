---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.retention_label import RetentionLabel
from msgraph_beta.generated.models.security.retention_duration_in_days import RetentionDurationInDays
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RetentionLabel(
	odata_type = "#microsoft.graph.security.retentionLabel",
	retention_duration = RetentionDurationInDays(
		odata_type = "microsoft.graph.security.retentionDurationInDays",
		days = 2555,
	),
)

result = await graph_client.security.labels.retention_labels.by_retention_label_id('retentionLabel-id').patch(request_body)


```