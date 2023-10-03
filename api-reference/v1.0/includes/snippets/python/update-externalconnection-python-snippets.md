---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ExternalConnection(
	name = "Contoso HR Service Tickets",
	description = "Connection to index HR service tickets",
)

result = await graph_client.external.connections.by_connection_id('externalConnection-id').patch(body = request_body)


```