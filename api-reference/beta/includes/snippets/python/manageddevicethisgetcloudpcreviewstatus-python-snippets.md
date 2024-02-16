---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.device_management.managed_devices.by_managed_device_id('managedDevice-id').get_cloud_pc_review_status.get()


```