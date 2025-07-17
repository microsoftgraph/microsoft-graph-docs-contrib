---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.person_website import PersonWebsite
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PersonWebsite(
	categories = [
		"football",
	],
	display_name = "Lyn Damer",
	web_url = "www.lyndamer.no",
)

result = await graph_client.me.profile.websites.post(request_body)


```