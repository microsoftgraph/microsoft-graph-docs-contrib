---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.ediscovery.site_source import SiteSource
from msgraph_beta.generated.models.site import Site

graph_client = GraphServiceClient(credentials, scopes)

request_body = SiteSource(
	site = Site(
		web_url = "https://contoso.sharepoint.com/sites/SecretSite",
	),
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').legal_holds.by_legal_hold_id('legalHold-id').site_sources.post(request_body)


```