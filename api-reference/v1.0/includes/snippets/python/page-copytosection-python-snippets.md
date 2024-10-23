---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.onenote.pages.item.copy_to_section.copy_to_section_post_request_body import CopyToSectionPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CopyToSectionPostRequestBody(
	id = "id-value",
	group_id = "groupId-value",
)

result = await graph_client.me.onenote.pages.by_onenote_page_id('onenotePage-id').copy_to_section.post(request_body)


```