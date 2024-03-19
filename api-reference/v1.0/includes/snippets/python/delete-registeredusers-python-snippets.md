---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.devices.by_device_id('device-id').registered_users.by_directory_object_id('directoryObject-id').ref.delete()


```