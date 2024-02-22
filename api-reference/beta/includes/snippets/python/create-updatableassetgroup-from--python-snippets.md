---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.updatable_asset_group import UpdatableAssetGroup

graph_client = GraphServiceClient(credentials, scopes)

request_body = UpdatableAssetGroup(
	odata_type = "#microsoft.graph.windowsUpdates.updatableAssetGroup",
)

result = await graph_client.admin.windows.updates.updatable_assets.post(request_body)


```