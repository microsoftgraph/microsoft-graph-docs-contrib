---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = Identity(
	id = "1431b9c38ee647f6a",
	type = IdentityType.ExternalGroup,
)

result = await graph_client.external.connections.by_connection_id('externalConnection-id').groups.by_group_id('externalGroup-id').members.post(body = request_body)


```