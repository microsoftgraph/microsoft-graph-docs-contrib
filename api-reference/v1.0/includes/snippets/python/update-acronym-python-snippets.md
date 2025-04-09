---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.search.acronym import Acronym
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Acronym(
	description = "A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers.",
)

result = await graph_client.search.acronyms.by_acronym_id('acronym-id').patch(request_body)


```