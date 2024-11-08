---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.external_connectors.external_group import ExternalGroup
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExternalGroup(
	id = "31bea3d537902000",
	display_name = "Contoso Marketing",
	description = "The product marketing team",
)

result = await graph_client.external.connections.by_external_connection_id('externalConnection-id').groups.post(request_body)


```