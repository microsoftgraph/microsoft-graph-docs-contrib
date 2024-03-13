---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.add_members_post_request_body import AddMembersPostRequestBody
from msgraph.generated.models.updatable_asset import UpdatableAsset
from msgraph.generated.models.azure_a_d_device import AzureADDevice

graph_client = GraphServiceClient(credentials, scopes)

request_body = AddMembersPostRequestBody(
	assets = [
		AzureADDevice(
			odata_type = "#microsoft.graph.windowsUpdates.azureADDevice",
			id = "String (identifier)",
		),
	],
)

await graph_client.admin.windows.updates.updatable_assets.by_updatable_asset_id('updatableAsset-id').microsoft_graph_windows_updates_add_members.post(request_body)


```