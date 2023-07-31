---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = NoncustodialDataSource()
request_body.apply_hold_to_source = True

data_source = UserSource()
data_source.@odata_type = 'microsoft.graph.ediscovery.userSource'

data_source.email = 'adelev@contoso.com'


request_body.data_source = data_source



result = await client.compliance.ediscovery.cases.by_case_id('case-id').noncustodial_data_sources.post(request_body = request_body)


```