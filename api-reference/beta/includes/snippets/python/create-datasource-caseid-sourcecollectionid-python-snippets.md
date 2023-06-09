---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DataSource()
request_body.@odata_type = 'microsoft.graph.ediscovery.userSource'

additional_data = [
'email' => 'badguy@contoso.com', 
];
request_body.additional_data(additional_data)





result = await client.compliance.ediscovery.cases.by_case_id('case-id').source_collections.by_source_collection_id('sourceCollection-id').additional_sources.post(request_body = request_body)


```