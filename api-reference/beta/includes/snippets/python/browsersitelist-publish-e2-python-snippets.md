---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = PublishPostRequestBody(
	revision = "1.0",
	sites = [
		BrowserSite(
			id = "53e5f971-fc7b-4cd3-a1bf-34d7c0416882",
		),
		BrowserSite(
			id = "2e27cc86-3662-447e-b751-274fb9f869ea",
		),
	],
	shared_cookies = [
		BrowserSharedCookie(
			id = "7f639835-23ab-4793-b1e6-1a06fad127a2",
		),
	],
)

result = await graph_client.admin.edge.internet_explorer_mode.site_lists.by_browser_site_list_id('browserSiteList-id').publish.post(request_body)


```