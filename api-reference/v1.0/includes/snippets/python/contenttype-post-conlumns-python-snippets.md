---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ColumnDefinition(
	additional_data = {
			"source_column@odata_bind" : "https://graph.microsoft.com/v1.0/sites/root/columns/99ddcf45-e2f7-4f17-82b0-6fba34445103",
	}
)

result = await graph_client.sites.by_site_id('site-id').content_types.by_content_type_id('contentType-id').columns.post(request_body)


```