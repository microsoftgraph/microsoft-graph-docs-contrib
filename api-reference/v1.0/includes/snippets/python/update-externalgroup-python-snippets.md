---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.external_group import ExternalGroup

graph_client = GraphServiceClient(credentials, scopes)

request_body = ExternalGroup(
	display_name = "Contoso Marketing",
	description = "The product marketing team",
)

result = await graph_client.external.connections.by_external_connection_id('externalConnection-id').groups.by_external_group_id('externalGroup-id').patch(request_body)


```