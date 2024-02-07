---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = CopyToSectionPostRequestBody(
	id = "id-value",
	group_id = "groupId-value",
)

result = await graph_client.me.onenote.pages.by_onenote_page_id('onenotePage-id').copy_to_section.post(request_body)


```