---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.device_management.ios_update_statuses.by_ios_update_device_status_id('iosUpdateDeviceStatus-id').get()


```