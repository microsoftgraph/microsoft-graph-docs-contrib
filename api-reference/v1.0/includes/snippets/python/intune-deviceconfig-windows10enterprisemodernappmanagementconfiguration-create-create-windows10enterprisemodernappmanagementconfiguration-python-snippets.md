---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = Windows10EnterpriseModernAppManagementConfiguration(
	odata_type = "#microsoft.graph.windows10EnterpriseModernAppManagementConfiguration",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	uninstall_built_in_apps = True,
)

result = await graph_client.device_management.device_configurations.post(body = request_body)


```