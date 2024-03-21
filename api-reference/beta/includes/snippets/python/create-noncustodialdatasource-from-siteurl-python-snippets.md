---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.noncustodial_data_source import NoncustodialDataSource
from msgraph.generated.models.site_source import SiteSource
from msgraph.generated.models.site import Site

graph_client = GraphServiceClient(credentials, scopes)

request_body = NoncustodialDataSource(
	apply_hold_to_source = False,
	data_source = SiteSource(
		odata_type = "microsoft.graph.ediscovery.siteSource",
		site = Site(
			web_url = "https://contoso.sharepoint.com/sites/SecretSite",
		),
	),
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').noncustodial_data_sources.post(request_body)


```