---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.browser_shared_cookie import BrowserSharedCookie

graph_client = GraphServiceClient(credentials, scopes)

request_body = BrowserSharedCookie(
	host_or_domain = "www.microsoft.com",
	source_environment = BrowserSharedCookieSourceEnvironment.MicrosoftEdge,
	display_name = "Microsoft Cookie",
	path = "/",
	host_only = True,
	comment = "Updating source environment.",
)

result = await graph_client.admin.edge.internet_explorer_mode.site_lists.by_browser_site_list_id('browserSiteList-id').shared_cookies.by_browser_shared_cookie_id('browserSharedCookie-id').patch(request_body)


```