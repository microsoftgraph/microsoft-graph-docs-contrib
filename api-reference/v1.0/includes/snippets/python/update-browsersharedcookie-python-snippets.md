---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = BrowserSharedCookie(
	host_or_domain = "www.microsoft.com",
	source_environment = BrowserSharedCookieSourceEnvironment.MicrosoftEdge,
	display_name = "Microsoft Cookie",
	path = "/",
	host_only = True,
	comment = "Updating source environment.",
)

result = await graph_client.admin.edge.internet_explorer_mode.site_lists.by_site_list_id('browserSiteList-id').shared_cookies.by_shared_cookie_id('browserSharedCookie-id').patch(body = request_body)


```