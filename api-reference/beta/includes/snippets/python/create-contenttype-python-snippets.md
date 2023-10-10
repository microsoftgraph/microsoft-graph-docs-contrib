---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ContentType(
	name = "docSet",
	description = "custom docset",
	base = ContentType(
		name = "Document Set",
		id = "0x0120D520",
	),
	group = "Document Set Content Types",
)

result = await graph_client.sites.by_site_id('site-id').content_types.post(body = request_body)


```