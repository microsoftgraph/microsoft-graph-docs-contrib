---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.admin.windows.updates.updatableassets.item.microsoft_graph_windows_updates_remove_members_by_id.remove_members_by_id_post_request_body import RemoveMembersByIdPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RemoveMembersByIdPostRequestBody(
	ids = [
		"String",
		"String",
		"String",
	],
	member_entity_type = "#microsoft.graph.windowsUpdates.azureADDevice",
)

await graph_client.admin.windows.updates.updatable_assets.by_updatable_asset_id('updatableAsset-id').microsoft_graph_windows_updates_remove_members_by_id.post(request_body)


```