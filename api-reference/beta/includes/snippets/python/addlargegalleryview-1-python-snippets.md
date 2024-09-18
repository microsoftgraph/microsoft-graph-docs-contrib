---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.communications.calls.item.add_large_gallery_view.add_large_gallery_view_post_request_body import AddLargeGalleryViewPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AddLargeGalleryViewPostRequestBody(
	client_context = "785f4929-92ca-497b-863f-c778c77c9758",
)

result = await graph_client.communications.calls.by_call_id('call-id').add_large_gallery_view.post(request_body)


```