---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.person_interest import PersonInterest
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PersonInterest(
	categories = [
		"Sports",
	],
	description = "World's greatest football club",
	display_name = "Chelsea FC",
	web_url = "https://www.chelseafc.com",
)

result = await graph_client.me.profile.interests.post(request_body)


```