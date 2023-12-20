---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

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