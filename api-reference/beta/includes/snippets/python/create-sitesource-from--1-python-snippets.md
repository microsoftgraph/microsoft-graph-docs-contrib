---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.site_source import SiteSource
from msgraph.generated.models.site import Site

graph_client = GraphServiceClient(credentials, scopes)

request_body = SiteSource(
	site = Site(
		web_url = "https://contoso.sharepoint.com/sites/HumanResources",
	),
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').custodians.by_custodian_id('custodian-id').site_sources.post(request_body)


```