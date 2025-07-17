---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.external_connectors.schema import Schema
from msgraph.generated.models.external_connectors.property import Property
from msgraph.generated.models.property_type import PropertyType
from msgraph.generated.models.external_connectors.label import Label
from msgraph.generated.models.label import Label
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Schema(
	base_type = "microsoft.graph.externalItem",
	properties = [
		Property_(
			name = "ticketTitle",
			type = PropertyType.String,
			is_searchable = True,
			is_retrievable = True,
			labels = [
				Label.Title,
			],
		),
		Property_(
			name = "priority",
			type = PropertyType.String,
			is_queryable = True,
			is_retrievable = True,
			is_searchable = False,
		),
		Property_(
			name = "assignee",
			type = PropertyType.String,
			is_retrievable = True,
		),
	],
)

result = await graph_client.external.connections.by_external_connection_id('externalConnection-id').schema.patch(request_body)


```