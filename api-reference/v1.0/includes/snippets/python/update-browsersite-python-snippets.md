---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.browser_site import BrowserSite

graph_client = GraphServiceClient(credentials, scopes)

request_body = BrowserSite(
	web_url = "www.microsoft.com",
	target_environment = BrowserSiteTargetEnvironment.MicrosoftEdge,
	merge_type = BrowserSiteMergeType.Default,
	compatibility_mode = BrowserSiteCompatibilityMode.Default,
	allow_redirect = False,
	comment = "Updating to Edge.",
)

result = await graph_client.admin.edge.internet_explorer_mode.site_lists.by_browser_site_list_id('browserSiteList-id').sites.by_browser_site_id('browserSite-id').patch(request_body)


```