---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



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

result = await graph_client.term_store.sets.by_set_id('set-id').terms.by_term_id('term-id').patch(request_body)


```