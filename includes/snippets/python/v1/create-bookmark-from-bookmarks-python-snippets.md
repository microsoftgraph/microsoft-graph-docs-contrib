---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.search.bookmark import Bookmark
from msgraph.generated.models.search.answer_keyword import AnswerKeyword
from msgraph.generated.models.answer_state import AnswerState
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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