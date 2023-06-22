---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnenrollAssetsByIdPostRequestBody()
request_body.updatecategory(UpdateCategory.Feature('updatecategory.feature'))

request_body.member_entity_type = '#microsoft.graph.windowsUpdates.azureADDevice'

request_body.Ids(['String', 'String', 'String', ])




await client.admin.windows.updates.updatable_assets.microsoft_graph_window_update_unenroll_asset_by_id.post(request_body = request_body)


```