---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.target_device_group import TargetDeviceGroup

graph_client = GraphServiceClient(credentials, scopes)

request_body = TargetDeviceGroup(
	odata_type = "#microsoft.graph.targetDeviceGroup",
	display_name = "Device Group A",
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').remote_desktop_security_configuration.target_device_groups.by_target_device_group_id('targetDeviceGroup-id').patch(request_body)


```