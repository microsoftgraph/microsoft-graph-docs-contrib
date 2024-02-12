---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.azure_data_lake_connector import AzureDataLakeConnector

graph_client = GraphServiceClient(credentials, scopes)

request_body = AzureDataLakeConnector(
	odata_type = "#microsoft.graph.industryData.azureDataLakeConnector",
	display_name = "CSV connector",
	additional_data = {
			"source_system@odata_bind" : "https://graph.microsoft.com/beta/external/industryData/sourceSystems('aa050107-5784-4a8e-1876-08daddab21bc')",
	}
)

result = await graph_client.external.industry_data.data_connectors.post(request_body)


```