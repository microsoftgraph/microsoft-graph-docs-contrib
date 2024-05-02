---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.network_access.connectivity.remote_networks.by_remote_network_id('remoteNetwork-id').device_links.by_device_link_id('deviceLink-id').get()


```