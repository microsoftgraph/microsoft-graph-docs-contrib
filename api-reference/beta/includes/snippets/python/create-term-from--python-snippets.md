---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.term_store.term import Term
from msgraph_beta.generated.models.term_store.localized_label import LocalizedLabel
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Term(
	labels = [
		LocalizedLabel(
			language_tag = "en-US",
			name = "Car",
			is_default = True,
		),
	],
)

result = await graph_client.term_store.sets.by_set_id('set-id').children.post(request_body)


```