---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.admin.windows.updates.updatableassets.item.microsoft_graph_windows_updates_add_members_by_id.add_members_by_id_post_request_body import AddMembersByIdPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = AddMembersByIdPostRequestBody(
	ids = [
		"String",
		"String",
		"String",
	],
	member_entity_type = "#microsoft.graph.windowsUpdates.azureADDevice",
)

await graph_client.admin.windows.updates.updatable_assets.by_updatable_asset_id('updatableAsset-id').microsoft_graph_windows_updates_add_members_by_id.post(request_body)


```