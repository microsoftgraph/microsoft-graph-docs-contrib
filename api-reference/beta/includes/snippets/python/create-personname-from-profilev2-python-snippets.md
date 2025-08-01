---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.person_name import PersonName
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PersonName(
	display_name = "Innocenty Popov",
	first = "Innocenty",
	initials = "IP",
	last = "Popov",
	language_tag = "en-US",
	maiden = None,
)

result = await graph_client.me.profile.names.post(request_body)


```