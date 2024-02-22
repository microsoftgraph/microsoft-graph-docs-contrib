---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').device_statuses.get()


```