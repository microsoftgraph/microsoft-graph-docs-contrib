---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.admin.edge.internet_explorer_mode.site_lists.by_browser_site_list_id('browserSiteList-id').shared_cookies.by_browser_shared_cookie_id('browserSharedCookie-id').get()


```