---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.sites.item.lists.item.contenttypes.add_copy_from_content_type_hub.add_copy_from_content_type_hub_post_request_body import AddCopyFromContentTypeHubPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AddCopyFromContentTypeHubPostRequestBody(
	content_type_id = "String",
)

result = await graph_client.sites.by_site_id('site-id').lists.by_list_id('list-id').content_types.add_copy_from_content_type_hub.post(request_body)


```