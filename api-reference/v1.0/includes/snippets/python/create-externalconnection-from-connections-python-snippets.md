---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.external_connectors.external_connection import ExternalConnection
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExternalConnection(
	id = "contosohr",
	name = "Contoso HR",
	description = "Connection to index Contoso HR system",
)

result = await graph_client.external.connections.post(request_body)


```