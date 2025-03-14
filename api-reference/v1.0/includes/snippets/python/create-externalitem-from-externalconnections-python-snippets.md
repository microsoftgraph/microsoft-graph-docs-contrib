---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.external_connectors.external_item import ExternalItem
from msgraph.generated.models.external_connectors.acl import Acl
from msgraph.generated.models.acl_type import AclType
from msgraph.generated.models.access_type import AccessType
from msgraph.generated.models.external_connectors.properties import Properties
from msgraph.generated.models.external_connectors.external_item_content import ExternalItemContent
from msgraph.generated.models.external_item_content_type import ExternalItemContentType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExternalItem(
	acl = [
		Acl(
			type = AclType.User,
			value = "e811976d-83df-4cbd-8b9b-5215b18aa874",
			access_type = AccessType.Grant,
		),
		Acl(
			type = AclType.ExternalGroup,
			value = "14m1b9c38qe647f6a",
			access_type = AccessType.Deny,
		),
	],
	properties = Properties(
		additional_data = {
				"title" : "Error in the payment gateway",
				"priority" : 1,
				"assignee" : "john@contoso.com",
		}
	),
	content = ExternalItemContent(
		value = "Error in payment gateway...",
		type = ExternalItemContentType.Text,
	),
)

result = await graph_client.external.connections.by_external_connection_id('externalConnection-id').items.by_external_item_id('externalItem-id').put(request_body)


```