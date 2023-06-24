---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AzureDataLakeConnector()
request_body.@odata_type = '#microsoft.graph.industryData.azureDataLakeConnector'

request_body.display_name = 'CSV connector'

additional_data = [
'source_system@odata_bind' => 'https://graph.microsoft.com/beta/external/industryData/sourceSystems(\'aa050107-5784-4a8e-1876-08daddab21bc\')', 
];
request_body.additional_data(additional_data)





result = await client.external.industry_data.data_connectors.post(request_body = request_body)


```