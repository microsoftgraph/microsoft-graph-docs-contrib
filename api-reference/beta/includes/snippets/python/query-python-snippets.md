---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.search.query.query_post_request_body import QueryPostRequestBody
from msgraph_beta.generated.models.search_request import SearchRequest
from msgraph_beta.generated.models.entity_type import EntityType
from msgraph_beta.generated.models.search_query import SearchQuery

graph_client = GraphServiceClient(credentials, scopes)

request_body = QueryPostRequestBody(
	requests = [
		SearchRequest(
			entity_types = [
				EntityType.ExternalItem,
			],
			content_sources = [
				"/external/connections/connectionfriendlyname",
			],
			region = "US",
			query = SearchQuery(
				query_string = "contoso product",
			),
			from = 0,
			size = 25,
			fields = [
				"title",
				"description",
			],
		),
	],
)

result = await graph_client.search.query.post(request_body)


```