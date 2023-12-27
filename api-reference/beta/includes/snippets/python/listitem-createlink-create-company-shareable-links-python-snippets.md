---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = CreateLinkPostRequestBody(
	type = "edit",
	scope = "organization",
)

result = await graph_client.sites.by_site_id('site-id').lists.by_list_id('list-id').items.by_list_item_id('listItem-id').create_link.post(request_body)


```