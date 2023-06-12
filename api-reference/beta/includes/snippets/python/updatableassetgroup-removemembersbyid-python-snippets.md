---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = RemoveMembersByIdPostRequestBody()
request_body.Ids(['String', 'String', 'String', ])

request_body.member_entity_type = '#microsoft.graph.windowsUpdates.azureADDevice'




await client.admin.windows.updates.updatable_assets.by_updatable_asset_id('updatableAsset-id').microsoft_graph_window_update_remove_member_by_id.post(request_body = request_body)


```