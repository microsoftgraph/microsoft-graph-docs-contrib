---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = Group(
	display_name = "myGroup",
)

result = await graph_client.sites.by_site_id('site-id').term_store.groups.post(body = request_body)


```