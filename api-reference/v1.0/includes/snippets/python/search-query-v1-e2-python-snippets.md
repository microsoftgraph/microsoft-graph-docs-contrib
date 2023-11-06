---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = QueryPostRequestBody(
	requests = [
		SearchRequest(
			entity_types = [
				EntityType.ListItem,
			],
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