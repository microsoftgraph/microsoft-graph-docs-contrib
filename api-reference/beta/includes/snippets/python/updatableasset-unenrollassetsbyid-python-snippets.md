---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = UnenrollAssetsByIdPostRequestBody(
	update_category = UpdateCategory.Feature,
	member_entity_type = "#microsoft.graph.windowsUpdates.azureADDevice",
	ids = [
		"String",
		"String",
		"String",
	],
)

await graph_client.admin.windows.updates.updatable_assets.microsoft_graph_windows_updates_unenroll_assets_by_id.post(request_body)


```