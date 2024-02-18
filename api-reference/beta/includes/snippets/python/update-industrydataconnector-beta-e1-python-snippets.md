---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.azure_data_lake_connector import AzureDataLakeConnector

graph_client = GraphServiceClient(credentials, scopes)

request_body = AzureDataLakeConnector(
	odata_type = "microsoft.graph.industryData.azureDataLakeConnector",
	display_name = "API Monitor 60201009",
)

result = await graph_client.external.industry_data.data_connectors.by_industry_data_connector_id('industryDataConnector-id').patch(request_body)


```