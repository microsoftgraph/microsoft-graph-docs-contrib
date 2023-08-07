---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ColumnDefinition()
request_body.required = True

request_body.hidden = False

request_body.propagate_changes = False




result = await client.sites.by_site_id('site-id').content_types.by_content_type_id('contentType-id').columns.by_column_id('columnDefinition-id').patch(request_body = request_body)


```