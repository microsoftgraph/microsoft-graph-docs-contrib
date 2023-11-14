---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = OutlookCategory(
	color = CategoryColor.Preset15,
)

result = await graph_client.me.outlook.master_categories.by_outlook_category_id('outlookCategory-id').patch(request_body)


```