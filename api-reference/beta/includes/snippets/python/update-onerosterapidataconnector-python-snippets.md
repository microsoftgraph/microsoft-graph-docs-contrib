---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.industry_data.one_roster_api_data_connector import OneRosterApiDataConnector
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OneRosterApiDataConnector(
	odata_type = "microsoft.graph.industryData.oneRosterApiDataConnector",
	display_name = "One Roster Connector",
)

result = await graph_client.external.industry_data.data_connectors.by_industry_data_connector_id('industryDataConnector-id').patch(request_body)


```