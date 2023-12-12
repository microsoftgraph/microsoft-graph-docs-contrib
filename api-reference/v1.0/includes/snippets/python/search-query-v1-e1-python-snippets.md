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
				EntityType.ExternalItem,
			],
			content_sources = [
				"/external/connections/connectionfriendlyname",
			],
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