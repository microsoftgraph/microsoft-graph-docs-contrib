---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BrowserSiteList()
request_body.display_name = 'Production Site List A'

request_body.description = 'Production site list for team A'




result = await client.admin.edge.internet_explorer_mode.site_lists.by_site_list_id('browserSiteList-id').patch(request_body = request_body)


```