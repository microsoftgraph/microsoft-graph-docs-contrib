---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



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