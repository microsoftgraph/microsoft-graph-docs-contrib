---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = UpdateAudienceByIdPostRequestBody(
	member_entity_type = "String",
	add_members = [
		"String",
	]
	remove_members = [
		"String",
	]
	add_exclusions = [
		"String",
	]
	remove_exclusions = [
		"String",
	]
)

await graph_client.admin.windows.updates.deployments.by_deployment_id('deployment-id').audience.microsoft_graph_window_update_update_audience_by_id.post(body = request_body)


```