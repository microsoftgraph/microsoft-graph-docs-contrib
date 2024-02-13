---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.list_item import ListItem
from msgraph.generated.models.field_value_set import FieldValueSet

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