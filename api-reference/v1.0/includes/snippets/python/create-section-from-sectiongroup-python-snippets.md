---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = OnenoteSection(
	display_name = "Section name",
)

result = await graph_client.me.onenote.section_groups.by_section_group_id('sectionGroup-id').sections.post(body = request_body)


```