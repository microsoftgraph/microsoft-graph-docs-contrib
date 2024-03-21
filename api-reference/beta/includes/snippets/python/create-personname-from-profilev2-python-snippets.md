---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.person_name import PersonName

graph_client = GraphServiceClient(credentials, scopes)

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