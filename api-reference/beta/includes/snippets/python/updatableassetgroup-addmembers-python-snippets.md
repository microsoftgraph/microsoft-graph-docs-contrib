---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AddMembersPostRequestBody()
assets_updatable_asset1 = AzureADDevice()
assets_updatable_asset1.@odata_type = '#microsoft.graph.windowsUpdates.azureADDevice'

assets_updatable_asset1.id = 'String (identifier)'


assetsArray []= assetsUpdatableAsset1;
request_body.assets(assetsArray)





await client.admin.windows.updates.updatable_assets.by_updatable_asset_id('updatableAsset-id').microsoft_graph_window_update_add_members.post(request_body = request_body)


```