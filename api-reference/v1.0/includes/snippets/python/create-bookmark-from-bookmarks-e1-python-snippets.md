---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.search.bookmark import Bookmark
from msgraph.generated.models.search.answer_keyword import AnswerKeyword
from msgraph.generated.models.device_platform_type import DevicePlatformType
from msgraph.generated.models.search.answer_variant import AnswerVariant
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