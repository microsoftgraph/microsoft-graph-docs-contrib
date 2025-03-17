---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.list import List
from msgraph_beta.generated.models.column_definition import ColumnDefinition
from msgraph_beta.generated.models.text_column import TextColumn
from msgraph_beta.generated.models.number_column import NumberColumn
from msgraph_beta.generated.models.list_info import ListInfo
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = List_(
	display_name = "Books",
	columns = [
		ColumnDefinition(
			name = "Author",
			text = TextColumn(
			),
		),
		ColumnDefinition(
			name = "PageCount",
			number = NumberColumn(
			),
		),
	],
	list = ListInfo(
		template = "genericList",
	),
)

result = await graph_client.sites.by_site_id('site-id').lists.post(request_body)


```