---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = Identity(
	id = "e5477431-1038-484e-bf69-1dfedb97a110",
	type = IdentityType.Group,
)

result = await graph_client.external.connections.by_connection_id('externalConnection-id').groups.by_group_id('externalGroup-id').members.post(body = request_body)


```