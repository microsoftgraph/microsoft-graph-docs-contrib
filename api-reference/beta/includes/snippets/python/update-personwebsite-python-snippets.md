---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.person_website import PersonWebsite
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PersonWebsite(
	description = "Lyn Damer play in the Women's 1st Division (Toppserien) in Norway",
)

result = await graph_client.me.profile.websites.by_person_website_id('personWebsite-id').patch(request_body)


```