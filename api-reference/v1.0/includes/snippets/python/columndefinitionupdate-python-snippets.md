---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ColumnDefinition(
	required = True,
	hidden = False,
	propagate_changes = False,
)

result = await graph_client.sites.by_site_id('site-id').content_types.by_content_type_id('contentType-id').columns.by_column_definition_id('columnDefinition-id').patch(request_body)


```