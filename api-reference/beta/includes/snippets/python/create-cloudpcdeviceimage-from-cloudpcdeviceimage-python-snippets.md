---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = CloudPcDeviceImage(
	odata_type = "#microsoft.graph.cloudPcDeviceImage",
	display_name = "Display Name value",
	os_build_number = "OS Build Number value",
	operating_system = "Operating System value",
	version = "Version value",
	source_image_resource_id = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.Compute/images/exampleImage",
)

result = await graph_client.device_management.virtual_endpoint.device_images.post(request_body)


```