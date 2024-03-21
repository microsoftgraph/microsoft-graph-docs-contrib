---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.field_value_set import FieldValueSet

graph_client = GraphServiceClient(credentials, scopes)

request_body = FieldValueSet(
	additional_data = {
			"color" : "Fuchsia",
			"quantity" : 934,
	}
)

result = await graph_client.sites.by_site_id('site-id').lists.by_list_id('list-id').items.by_list_item_id('listItem-id').fields.patch(request_body)


```