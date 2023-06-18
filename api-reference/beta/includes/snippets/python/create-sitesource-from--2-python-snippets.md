---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SiteSource()
site = Site()
site.web_url = 'https://contoso.sharepoint.com/sites/SecretSite'


request_body.site = site



result = await client.compliance.ediscovery.cases.by_case_id('case-id').legal_holds.by_legal_hold_id('legalHold-id').site_sources.post(request_body = request_body)


```