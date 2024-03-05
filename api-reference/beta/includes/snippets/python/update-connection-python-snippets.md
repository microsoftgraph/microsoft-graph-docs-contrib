---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.external_connection import ExternalConnection

graph_client = GraphServiceClient(credentials, scopes)

request_body = ExternalConnection(
	name = "Contoso HR Service Tickets",
	description = "Connection to index HR service tickets",
)

result = await graph_client.external.connections.by_external_connection_id('externalConnection-id').patch(request_body)


```