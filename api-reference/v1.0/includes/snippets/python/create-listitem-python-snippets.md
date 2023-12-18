---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ListItem(
	fields = FieldValueSet(
		additional_data = {
				"title" : "Widget",
				"color" : "Purple",
				"weight" : 32,
		}
	),
)

result = await graph_client.sites.by_site_id('site-id').lists.by_list_id('list-id').items.post(request_body)


```