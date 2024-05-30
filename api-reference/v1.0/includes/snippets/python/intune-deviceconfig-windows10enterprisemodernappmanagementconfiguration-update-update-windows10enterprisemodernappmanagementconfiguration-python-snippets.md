---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.windows10_enterprise_modern_app_management_configuration import Windows10EnterpriseModernAppManagementConfiguration

graph_client = GraphServiceClient(credentials, scopes)

request_body = Windows10EnterpriseModernAppManagementConfiguration(
	odata_type = "#microsoft.graph.windows10EnterpriseModernAppManagementConfiguration",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	uninstall_built_in_apps = True,
)

result = await graph_client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').patch(request_body)


```