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
)

result = await graph_client.me.profile.interests.by_person_interest_id('personInterest-id').patch(request_body)


```