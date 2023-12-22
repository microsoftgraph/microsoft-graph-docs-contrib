---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = UpdatableAssetGroup(
	odata_type = "#microsoft.graph.windowsUpdates.updatableAssetGroup",
)

result = await graph_client.admin.windows.updates.updatable_assets.post(request_body)


```