---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AddLargeGalleryViewPostRequestBody(
	client_context = "785f4929-92ca-497b-863f-c778c77c9758",
)

result = await graph_client.communications.calls.by_call_id('call-id').add_large_gallery_view.post(request_body)


```