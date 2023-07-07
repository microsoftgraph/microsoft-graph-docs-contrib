---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SitePage()
request_body.@odata_type = '#microsoft.graph.sitePage'

request_body.title = 'sample'

request_body.show_comments = True

request_body.show_recommended_pages = False




result = await client.sites.by_site_id('site-id').pages.by_page_id('sitePage-id').patch(request_body = request_body)


```