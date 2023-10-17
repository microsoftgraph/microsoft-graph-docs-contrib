---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = FieldValueSet(
	additional_data = {
			"color" : "Fuchsia",
			"quantity" : 934,
	}
)

result = await graph_client.sites.by_site_id('site-id').lists.by_list_id('list-id').items.by_item_id('listItem-id').fields.patch(body = request_body)


```