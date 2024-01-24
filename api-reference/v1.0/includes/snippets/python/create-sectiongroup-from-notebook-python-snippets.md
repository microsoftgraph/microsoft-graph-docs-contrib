---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = SectionGroup(
	display_name = "Section group name",
)

result = await graph_client.me.onenote.notebooks.by_notebook_id('notebook-id').section_groups.post(request_body)


```