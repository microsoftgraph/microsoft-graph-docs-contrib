---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = SiteSource(
	site = Site(
		web_url = "https://contoso.sharepoint.com/sites/SecretSite",
	),
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').legal_holds.by_legal_hold_id('legalHold-id').site_sources.post(request_body)


```