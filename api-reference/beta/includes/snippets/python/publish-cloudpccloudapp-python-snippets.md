---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.cloudapps.publish.publish_post_request_body import PublishPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PublishPostRequestBody(
	cloud_app_ids = [
		"30d0e128-de93-41dc-89ec-33d84bb662a0",
		"40d0e128-de93-41dc-89ec-33d84bb662a0",
	],
)

await graph_client.device_management.virtual_endpoint.cloud_apps.publish.post(request_body)


```