---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = UpdateAudiencePostRequestBody(
	add_members = [
		AzureADDevice(
			odata_type = "#microsoft.graph.windowsUpdates.azureADDevice",
			id = "String (identifier)",
		),
	]
)

await graph_client.admin.windows.updates.deployment_audiences.by_deployment_audience_id('deploymentAudience-id').microsoft_graph_window_update_update_audience.post(body = request_body)


```