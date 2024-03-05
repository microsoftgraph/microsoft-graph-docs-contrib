---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.security.labels.retention_labels.by_retention_label_id('retentionLabel-id').get()


```