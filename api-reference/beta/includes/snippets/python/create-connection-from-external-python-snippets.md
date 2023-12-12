---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ExternalConnection(
	id = "contosohr",
	name = "Contoso HR",
	description = "Connection to index Contoso HR system",
)

result = await graph_client.external.connections.post(request_body)


```