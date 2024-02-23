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
		web_url = "https://m365x809305.sharepoint.com/sites/Retail",
	),
)

result = await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').legal_holds.by_ediscovery_hold_policy_id('ediscoveryHoldPolicy-id').site_sources.post(request_body)


```