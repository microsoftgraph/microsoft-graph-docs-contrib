---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.me.settings.storage.quota.services.by_service_storage_quota_breakdown_id('serviceStorageQuotaBreakdown-id').get()


```