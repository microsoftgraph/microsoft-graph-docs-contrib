---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.target_device_group import TargetDeviceGroup
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TargetDeviceGroup(
	odata_type = "#microsoft.graph.targetDeviceGroup",
	display_name = "Device Group A",
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').remote_desktop_security_configuration.target_device_groups.by_target_device_group_id('targetDeviceGroup-id').patch(request_body)


```