---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = Bookmark(
	display_name = "Contoso Install Site",
	web_url = "http://www.contoso.com/",
	description = "Try or buy Contoso for Home or Business and view product information",
	keywords = AnswerKeyword(
		keywords = [
			"Contoso",
			"install",
		]
		reserved_keywords = [
			"Contoso",
		]
		match_similar_keywords = True,
	),
	state = AnswerState.Published,
)

result = await graph_client.search.bookmarks.post(body = request_body)


```