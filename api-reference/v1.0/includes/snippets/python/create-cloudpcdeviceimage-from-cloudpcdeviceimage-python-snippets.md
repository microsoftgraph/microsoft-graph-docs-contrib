---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.cloud_pc_device_image import CloudPcDeviceImage
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CloudPcDeviceImage(
	display_name = "ImageForDev",
	version = "0.0.1",
	source_image_resource_id = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.Compute/images/exampleImage",
)

result = await graph_client.device_management.virtual_endpoint.device_images.post(request_body)


```