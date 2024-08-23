---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.device_management.managed_devices.by_managed_device_id('managedDevice-id').reset_passcode.post()


```