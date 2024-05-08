---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.sites.item.lists.item.contenttypes.add_copy_from_content_type_hub.add_copy_from_content_type_hub_post_request_body import AddCopyFromContentTypeHubPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = AddCopyFromContentTypeHubPostRequestBody(
	content_type_id = "String",
)

result = await graph_client.sites.by_site_id('site-id').lists.by_list_id('list-id').content_types.add_copy_from_content_type_hub.post(request_body)


```