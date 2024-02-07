---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



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