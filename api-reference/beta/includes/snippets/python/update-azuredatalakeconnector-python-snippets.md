---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.industry_data.azure_data_lake_connector import AzureDataLakeConnector

graph_client = GraphServiceClient(credentials, scopes)

request_body = AzureDataLakeConnector(
	odata_type = "microsoft.graph.industryData.azureDataLakeConnector",
	display_name = "CSV files from SIS",
)

result = await graph_client.external.industry_data.data_connectors.by_industry_data_connector_id('industryDataConnector-id').patch(request_body)


```