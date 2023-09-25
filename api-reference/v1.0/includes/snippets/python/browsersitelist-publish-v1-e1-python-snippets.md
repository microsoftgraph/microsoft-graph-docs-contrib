---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = PublishPostRequestBody(
	revision = "1.0",
)

result = await graph_client.admin.edge.internet_explorer_mode.site_lists.by_site_list_id('browserSiteList-id').publish.post(body = request_body)


```