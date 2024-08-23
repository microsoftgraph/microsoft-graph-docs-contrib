---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').assignments.by_device_configuration_assignment_id('deviceConfigurationAssignment-id').delete()


```