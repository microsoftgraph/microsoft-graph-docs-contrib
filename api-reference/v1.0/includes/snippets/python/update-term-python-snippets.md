---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.term import Term
from msgraph.generated.models.localized_label import LocalizedLabel

graph_client = GraphServiceClient(credentials, scopes)

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