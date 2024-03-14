---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.browser_site import BrowserSite

graph_client = GraphServiceClient(credentials, scopes)

request_body = BrowserSite(
	odata_type = "#microsoft.graph.browserSite",
	web_url = "www.microsoft.com",
	target_environment = BrowserSiteTargetEnvironment.InternetExplorer11,
	comment = "A site that opens in InternetExplorer11",
	merge_type = BrowserSiteMergeType.Default,
	compatibility_mode = BrowserSiteCompatibilityMode.Default,
	allow_redirect = True,
)

result = await graph_client.admin.edge.internet_explorer_mode.site_lists.by_browser_site_list_id('browserSiteList-id').sites.post(request_body)


```