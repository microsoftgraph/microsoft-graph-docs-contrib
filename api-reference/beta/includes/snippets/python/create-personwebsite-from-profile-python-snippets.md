---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.person_website import PersonWebsite

graph_client = GraphServiceClient(credentials, scopes)

request_body = PersonWebsite(
	categories = [
		"football",
	],
	display_name = "Lyn Damer",
	web_url = "www.lyndamer.no",
)

result = await graph_client.me.profile.websites.post(request_body)


```