---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.column_definition import ColumnDefinition

graph_client = GraphServiceClient(credentials, scopes)

request_body = ColumnDefinition(
	required = True,
	hidden = False,
	propagate_changes = False,
)

result = await graph_client.sites.by_site_id('site-id').content_types.by_content_type_id('contentType-id').columns.by_column_definition_id('columnDefinition-id').patch(request_body)


```