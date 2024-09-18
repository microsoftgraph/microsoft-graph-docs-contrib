---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.industry_data.one_roster_api_data_connector import OneRosterApiDataConnector

graph_client = GraphServiceClient(credentials, scopes)

request_body = OneRosterApiDataConnector(
	odata_type = "microsoft.graph.industryData.oneRosterApiDataConnector",
	display_name = "One Roster Connector",
)

result = await graph_client.external.industry_data.data_connectors.by_industry_data_connector_id('industryDataConnector-id').patch(request_body)


```