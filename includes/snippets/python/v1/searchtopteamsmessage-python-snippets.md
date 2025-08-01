---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.search.query.query_post_request_body import QueryPostRequestBody
from msgraph.generated.models.search_request import SearchRequest
from msgraph.generated.models.entity_type import EntityType
from msgraph.generated.models.search_query import SearchQuery
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = QueryPostRequestBody(
	requests = [
		SearchRequest(
			entity_types = [
				EntityType.ChatMessage,
			],
			query = SearchQuery(
				query_string = "test",
			),
			from = 0,
			size = 15,
			enable_top_results = True,
		),
	],
)

result = await graph_client.search.query.post(request_body)


```