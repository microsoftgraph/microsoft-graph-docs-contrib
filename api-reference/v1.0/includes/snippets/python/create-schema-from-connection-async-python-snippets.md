---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.schema import Schema
from msgraph.generated.models.property import Property
from msgraph.generated.models.label import Label

graph_client = GraphServiceClient(credentials, scopes)

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