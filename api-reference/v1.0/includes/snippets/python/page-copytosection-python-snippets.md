---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.onenote.pages.item.copy_to_section.copy_to_section_post_request_body import CopyToSectionPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = CopyToSectionPostRequestBody(
	id = "id-value",
	group_id = "groupId-value",
)

result = await graph_client.me.onenote.pages.by_onenote_page_id('onenotePage-id').copy_to_section.post(request_body)


```