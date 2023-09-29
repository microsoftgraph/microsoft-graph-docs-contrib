---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = RemoveMembersPostRequestBody(
	assets = [
		AzureADDevice(
			odata_type = "#microsoft.graph.windowsUpdates.azureADDevice",
			id = "String (identifier)",
		),
	]
)

await graph_client.admin.windows.updates.updatable_assets.by_updatable_asset_id('updatableAsset-id').microsoft_graph_window_update_remove_members.post(body = request_body)


```