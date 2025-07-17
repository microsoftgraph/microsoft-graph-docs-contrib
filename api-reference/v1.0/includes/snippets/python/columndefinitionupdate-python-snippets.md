---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.column_definition import ColumnDefinition
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ColumnDefinition(
	required = True,
	hidden = False,
	propagate_changes = False,
)

result = await graph_client.sites.by_site_id('site-id').content_types.by_content_type_id('contentType-id').columns.by_column_definition_id('columnDefinition-id').patch(request_body)


```