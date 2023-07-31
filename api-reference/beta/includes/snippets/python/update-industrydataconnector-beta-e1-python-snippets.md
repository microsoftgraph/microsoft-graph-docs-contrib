---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AzureDataLakeConnector()
request_body.@odata_type = 'microsoft.graph.industryData.azureDataLakeConnector'

request_body.display_name = 'API Monitor 60201009'




result = await client.external.industry_data.data_connectors.by_data_connector_id('industryDataConnector-id').patch(request_body = request_body)


```