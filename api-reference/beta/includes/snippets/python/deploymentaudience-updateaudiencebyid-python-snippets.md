---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.admin.windows.updates.deployments.item.audience.microsoft_graph_windows_updates_update_audience_by_id.update_audience_by_id_post_request_body import UpdateAudienceByIdPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UpdateAudienceByIdPostRequestBody(
	member_entity_type = "String",
	add_members = [
		"String",
	],
	remove_members = [
		"String",
	],
	add_exclusions = [
		"String",
	],
	remove_exclusions = [
		"String",
	],
)

await graph_client.admin.windows.updates.deployments.by_deployment_id('deployment-id').audience.microsoft_graph_windows_updates_update_audience_by_id.post(request_body)


```