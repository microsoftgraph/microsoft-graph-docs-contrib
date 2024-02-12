---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.browser_shared_cookie import BrowserSharedCookie

graph_client = GraphServiceClient(credentials, scopes)

request_body = BrowserSharedCookie(
	odata_type = "#microsoft.graph.browserSharedCookie",
	host_or_domain = "www.microsoft.com",
	source_environment = BrowserSharedCookieSourceEnvironment.InternetExplorer11,
	display_name = "Microsoft Cookie",
	host_only = True,
	comment = "A cookie for microsoft.com",
	path = "/",
)

result = await graph_client.admin.edge.internet_explorer_mode.site_lists.by_browser_site_list_id('browserSiteList-id').shared_cookies.post(request_body)


```