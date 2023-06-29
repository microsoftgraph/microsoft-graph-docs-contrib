---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UpdatableAssetGroup()
request_body.@odata_type = '#microsoft.graph.windowsUpdates.updatableAssetGroup'




result = await client.admin.windows.updates.updatable_assets.post(request_body = request_body)


```