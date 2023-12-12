---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = BrowserSiteList(
	display_name = "Production Site List A",
	description = "Production site list for team A",
)

result = await graph_client.admin.edge.internet_explorer_mode.site_lists.post(request_body)


```