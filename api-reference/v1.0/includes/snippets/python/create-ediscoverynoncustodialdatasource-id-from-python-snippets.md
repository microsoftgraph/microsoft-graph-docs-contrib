---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EdiscoveryNoncustodialDataSource()
data_source = SiteSource()
data_source.@odata_type = 'microsoft.graph.security.siteSource'

data_sourcesite = Site()
data_sourcesite.web_url = 'https://m365x809305.sharepoint.com/sites/Design-topsecret'


data_source.site = data_sourcesite

request_body.data_source = data_source



result = await client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').noncustodial_data_sources.post(request_body = request_body)


```