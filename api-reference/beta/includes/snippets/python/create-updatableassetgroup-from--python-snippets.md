---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.windows_updates.updatable_asset_group import UpdatableAssetGroup
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UpdatableAssetGroup(
	odata_type = "#microsoft.graph.windowsUpdates.updatableAssetGroup",
)

result = await graph_client.admin.windows.updates.updatable_assets.post(request_body)


```