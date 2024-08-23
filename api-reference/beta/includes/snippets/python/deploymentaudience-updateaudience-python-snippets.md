---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.admin.windows.updates.deploymentaudiences.item.microsoft_graph_windows_updates_update_audience.update_audience_post_request_body import UpdateAudiencePostRequestBody
from msgraph_beta.generated.models.windows_updates.updatable_asset import UpdatableAsset
from msgraph_beta.generated.models.windows_updates.azure_a_d_device import AzureADDevice

graph_client = GraphServiceClient(credentials, scopes)

request_body = UpdateAudiencePostRequestBody(
	add_members = [
		AzureADDevice(
			odata_type = "#microsoft.graph.windowsUpdates.azureADDevice",
			id = "String (identifier)",
		),
	],
)

await graph_client.admin.windows.updates.deployment_audiences.by_deployment_audience_id('deploymentAudience-id').microsoft_graph_windows_updates_update_audience.post(request_body)


```