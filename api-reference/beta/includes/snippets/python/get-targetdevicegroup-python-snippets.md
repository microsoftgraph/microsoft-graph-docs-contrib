---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').remote_desktop_security_configuration.target_device_groups.by_target_device_group_id('targetDeviceGroup-id').get()


```