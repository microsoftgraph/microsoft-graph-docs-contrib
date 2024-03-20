---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.person_interest import PersonInterest

graph_client = GraphServiceClient(credentials, scopes)

request_body = PersonInterest(
	categories = [
		"Sports",
	],
)

result = await graph_client.me.profile.interests.by_person_interest_id('personInterest-id').patch(request_body)


```