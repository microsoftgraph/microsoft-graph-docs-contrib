---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = OutlookCategory(
	color = CategoryColor.Preset15,
)

result = await graph_client.me.outlook.master_categories.by_master_categorie_id('outlookCategory-id').patch(body = request_body)


```