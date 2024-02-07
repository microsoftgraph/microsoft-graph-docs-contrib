---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

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