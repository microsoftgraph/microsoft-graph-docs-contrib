---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SiteSource()
request_body.@odata_type = 'microsoft.graph.security.siteSource'

site = Site()
site.web_url = 'https://m365x809305.sharepoint.com/sites/Design-topsecret'


request_body.site = site



result = await client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').searches.by_searche_id('ediscoverySearch-id').additional_sources.post(request_body = request_body)


```