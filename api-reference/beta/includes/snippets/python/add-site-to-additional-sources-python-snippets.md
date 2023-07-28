---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SiteSource()
request_body.@odata_type = 'microsoft.graph.ediscovery.siteSource'

site = Site()
site.web_url = 'https://contoso.sharepoint.com/sites/SecretSite'


request_body.site = site



result = await client.compliance.ediscovery.cases.by_case_id('case-id').source_collections.by_source_collection_id('sourceCollection-id').additional_sources.post(request_body = request_body)


```