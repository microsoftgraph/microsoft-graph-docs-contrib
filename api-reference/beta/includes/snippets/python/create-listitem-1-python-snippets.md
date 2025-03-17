---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.list_item import ListItem
from msgraph_beta.generated.models.field_value_set import FieldValueSet
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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