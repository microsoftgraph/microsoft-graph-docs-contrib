---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = OnenoteSection(
	display_name = "Section name",
)

result = await graph_client.me.onenote.section_groups.by_section_group_id('sectionGroup-id').sections.post(request_body)


```