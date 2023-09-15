---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = CopyToSectionPostRequestBody(
	id = "id-value",
	group_id = "groupId-value",
)

result = await graph_client.me.onenote.pages.by_page_id('onenotePage-id').copy_to_section.post(body = request_body)


```