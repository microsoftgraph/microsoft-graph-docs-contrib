---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.sites.item.lists.item.contenttypes.add_copy.add_copy_post_request_body import AddCopyPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AddCopyPostRequestBody(
	content_type = "https://graph.microsoft.com/v1.0/sites/{site-id}/contentTypes/0x0101",
)

result = await graph_client.sites.by_site_id('site-id').lists.by_list_id('list-id').content_types.add_copy.post(request_body)


```