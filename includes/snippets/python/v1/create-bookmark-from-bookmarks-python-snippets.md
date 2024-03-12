---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.bookmark import Bookmark
from msgraph.generated.models.answer_keyword import AnswerKeyword

graph_client = GraphServiceClient(credentials, scopes)

request_body = Bookmark(
	display_name = "Contoso Install Site",
	web_url = "http://www.contoso.com/",
	description = "Try or buy Contoso for Home or Business and view product information",
	keywords = AnswerKeyword(
		keywords = [
			"Contoso",
			"install",
		],
		reserved_keywords = [
			"Contoso",
		],
		match_similar_keywords = True,
	),
	state = AnswerState.Published,
)

result = await graph_client.search.bookmarks.post(request_body)


```