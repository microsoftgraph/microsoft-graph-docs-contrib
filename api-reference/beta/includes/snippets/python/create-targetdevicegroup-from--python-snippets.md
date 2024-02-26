---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.target_device_group import TargetDeviceGroup

graph_client = GraphServiceClient(credentials, scopes)

request_body = TargetDeviceGroup(
	odata_type = "#microsoft.graph.targetDeviceGroup",
	id = "b9e4eae4-b781-45a1-ce65-f2dd8ac3b696",
	display_name = "Device Group A",
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').remote_desktop_security_configuration.target_device_groups.post(request_body)


```