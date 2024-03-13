---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.security.trigger_types.retention_event_types.by_retention_event_type_id('retentionEventType-id').get()


```