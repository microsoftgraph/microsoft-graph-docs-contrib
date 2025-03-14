---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.external_connectors.identity import Identity
from msgraph_beta.generated.models.identity_type import IdentityType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Identity(
	id = "1431b9c38ee647f6a",
	type = IdentityType.ExternalGroup,
)

result = await graph_client.external.connections.by_external_connection_id('externalConnection-id').groups.by_external_group_id('externalGroup-id').members.post(request_body)


```