---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.ediscovery.site_source import SiteSource
from msgraph_beta.generated.models.site import Site
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SiteSource(
	odata_type = "microsoft.graph.ediscovery.siteSource",
	site = Site(
		web_url = "https://contoso.sharepoint.com/sites/SecretSite",
	),
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').source_collections.by_source_collection_id('sourceCollection-id').additional_sources.post(request_body)


```