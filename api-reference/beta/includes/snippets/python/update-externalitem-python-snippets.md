---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.external_connectors.external_item import ExternalItem
from msgraph_beta.generated.models.external_connectors.acl import Acl
from msgraph_beta.generated.models.acl_type import AclType
from msgraph_beta.generated.models.access_type import AccessType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExternalItem(
	acl = [
		Acl(
			type = AclType.Everyone,
			value = "67a141d8-cf4e-4528-ba07-bed21bfacd2d",
			access_type = AccessType.Grant,
		),
	],
)

result = await graph_client.external.connections.by_external_connection_id('externalConnection-id').items.by_external_item_id('externalItem-id').put(request_body)


```