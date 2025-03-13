---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.term_store.term import Term
from msgraph.generated.models.term_store.localized_label import LocalizedLabel
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Term(
	labels = [
		LocalizedLabel(
			name = "changedLabel",
			language_tag = "en-US",
			is_default = True,
		),
	],
)

result = await graph_client.sites.by_site_id('site-id').term_store.sets.by_set_id('set-id').terms.by_term_id('term-id').patch(request_body)


```