---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.security.ediscovery_noncustodial_data_source import EdiscoveryNoncustodialDataSource
from msgraph.generated.models.security.site_source import SiteSource
from msgraph.generated.models.site import Site
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EdiscoveryNoncustodialDataSource(
	data_source = SiteSource(
		odata_type = "microsoft.graph.security.siteSource",
		site = Site(
			web_url = "https://m365x809305.sharepoint.com/sites/Design-topsecret",
		),
	),
)

result = await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').noncustodial_data_sources.post(request_body)


```