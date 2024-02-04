---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = QueryPostRequestBody(
	requests = [
		SearchRequest(
			entity_types = [
				EntityType.ChatMessage,
			],
			query = SearchQuery(
				query_string = "contoso from:bob to:alice sent>2022-07-14",
			),
			from = 0,
			size = 15,
			enable_top_results = True,
		),
	],
)

result = await graph_client.search.query.post(request_body)


```