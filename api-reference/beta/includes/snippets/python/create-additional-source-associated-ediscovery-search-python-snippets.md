---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.site_source import SiteSource
from msgraph_beta.generated.models.site import Site
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SiteSource(
	odata_type = "microsoft.graph.security.siteSource",
	site = Site(
		web_url = "https://m365x809305.sharepoint.com/sites/Design-topsecret",
	),
)

result = await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').searches.by_ediscovery_search_id('ediscoverySearch-id').additional_sources.post(request_body)


```