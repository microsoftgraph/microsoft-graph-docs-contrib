---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.external_group import ExternalGroup

graph_client = GraphServiceClient(credentials, scopes)

request_body = ExternalGroup(
	id = "31bea3d537902000",
	display_name = "Contoso Marketing",
	description = "The product marketing team",
)

result = await graph_client.external.connections.by_external_connection_id('externalConnection-id').groups.post(request_body)


```