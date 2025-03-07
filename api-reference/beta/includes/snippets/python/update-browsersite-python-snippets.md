---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.browser_site import BrowserSite
from msgraph_beta.generated.models.browser_site_target_environment import BrowserSiteTargetEnvironment
from msgraph_beta.generated.models.browser_site_merge_type import BrowserSiteMergeType
from msgraph_beta.generated.models.browser_site_compatibility_mode import BrowserSiteCompatibilityMode
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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