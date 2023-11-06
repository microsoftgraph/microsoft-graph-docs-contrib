---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = OutlookCategory(
	display_name = "Project expenses",
	color = CategoryColor.Preset9,
)

result = await graph_client.me.outlook.master_categories.post(request_body)


```