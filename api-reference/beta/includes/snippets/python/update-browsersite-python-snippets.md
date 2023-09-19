---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = BrowserSite(
	web_url = "www.microsoft.com",
	target_environment = BrowserSiteTargetEnvironment.MicrosoftEdge,
	merge_type = BrowserSiteMergeType.Default,
	compatibility_mode = BrowserSiteCompatibilityMode.Default,
	allow_redirect = False,
	comment = "Updating to Edge.",
)

result = await graph_client.admin.edge.internet_explorer_mode.site_lists.by_site_list_id('browserSiteList-id').sites.by_site_id('browserSite-id').patch(body = request_body)


```