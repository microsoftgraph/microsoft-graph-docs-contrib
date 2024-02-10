---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.query_post_request_body import QueryPostRequestBody
from msgraph.generated.models.search_request import SearchRequest
from msgraph.generated.models.entity_type import EntityType
from msgraph.generated.models.search_query import SearchQuery

graph_client = GraphServiceClient(credentials, scopes)

request_body = QueryPostRequestBody(
	requests = [
		SearchRequest(
			entity_types = [
				EntityType.ListItem,
			],
			region = "US",
			query = SearchQuery(
				query_string = "contoso",
				query_template = "{searchTerms} CreatedBy:Bob",
			),
			from = 0,
			size = 25,
		),
	],
)

result = await graph_client.search.query.post(request_body)


```