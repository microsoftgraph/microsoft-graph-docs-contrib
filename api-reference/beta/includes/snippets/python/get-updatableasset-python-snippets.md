---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.admin.windows.updates.updatable_assets.by_updatable_asset_id('updatableAsset-id').get()


```