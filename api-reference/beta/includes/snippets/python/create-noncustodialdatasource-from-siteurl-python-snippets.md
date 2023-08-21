---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = NoncustodialDataSource()
request_body.apply_hold_to_source = False

data_source = SiteSource()
data_source.@odata_type = 'microsoft.graph.ediscovery.siteSource'

data_sourcesite = Site()
data_sourcesite.web_url = 'https://contoso.sharepoint.com/sites/SecretSite'


data_source.site = data_sourcesite

request_body.data_source = data_source



result = await client.compliance.ediscovery.cases.by_case_id('case-id').noncustodial_data_sources.post(request_body = request_body)


```