---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.external_connectors.external_connection import ExternalConnection
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExternalConnection(
	name = "Contoso HR Service Tickets",
	description = "Connection to index HR service tickets",
)

result = await graph_client.external.connections.by_external_connection_id('externalConnection-id').patch(request_body)


```