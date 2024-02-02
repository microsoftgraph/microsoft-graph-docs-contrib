---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = OnenoteSection(
	display_name = "Section name",
)

result = await graph_client.me.onenote.notebooks.by_notebook_id('notebook-id').sections.post(request_body)


```