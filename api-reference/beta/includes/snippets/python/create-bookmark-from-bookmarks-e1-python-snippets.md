---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.bookmark import Bookmark
from msgraph.generated.models.answer_keyword import AnswerKeyword
from msgraph.generated.models.device_platform_type import DevicePlatformType
from msgraph.generated.models.answer_variant import AnswerVariant

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
			"Unique keyword",
		],
		match_similar_keywords = True,
	),
	availability_start_date_time = None,
	availability_end_date_time = None,
	platforms = [
		DevicePlatformType.Android,
	],
	targeted_variations = [
		AnswerVariant(
			language_tag = "es-es",
			display_name = "Sitio de instalación Contoso",
			description = "Pruebe o compre Contoso hogar o negocios y vea la información del producto",
		),
	],
	state = AnswerState.Published,
)

result = await graph_client.search.bookmarks.post(request_body)


```