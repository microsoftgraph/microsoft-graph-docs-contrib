---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.column_definition import ColumnDefinition
from msgraph.generated.models.text_column import TextColumn

graph_client = GraphServiceClient(credentials, scopes)

request_body = ColumnDefinition(
	description = "test",
	enforce_unique_values = False,
	hidden = False,
	indexed = False,
	name = "Title",
	text = TextColumn(
		allow_multiple_lines = False,
		append_changes_to_existing_text = False,
		lines_for_editing = 0,
		max_length = 255,
	),
)

result = await graph_client.sites.by_site_id('site-id').columns.post(request_body)


```