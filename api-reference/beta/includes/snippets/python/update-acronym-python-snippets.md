---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.acronym import Acronym

graph_client = GraphServiceClient(credentials, scopes)

request_body = Acronym(
	description = "A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers.",
)

result = await graph_client.search.acronyms.by_acronym_id('acronym-id').patch(request_body)


```