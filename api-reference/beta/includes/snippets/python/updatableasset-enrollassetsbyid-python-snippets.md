---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.admin.windows.updates.updatableassets.microsoft_graph_windows_updates_enroll_assets_by_id.enroll_assets_by_id_post_request_body import EnrollAssetsByIdPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = EnrollAssetsByIdPostRequestBody(
	update_category = UpdateCategory.Feature,
	member_entity_type = "#microsoft.graph.windowsUpdates.azureADDevice",
	ids = [
		"String",
		"String",
		"String",
	],
)

await graph_client.admin.windows.updates.updatable_assets.microsoft_graph_windows_updates_enroll_assets_by_id.post(request_body)


```